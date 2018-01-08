from flask import Flask, redirect, jsonify, request
from flask_socketio import SocketIO, emit
import json
import control
import threading
from eventlet import monkey_patch
import re
import sqlite3
import iso8601
import subprocess
import datetime
import sys
import traceback

import astropy.time
import astropy.coordinates
from astropy.coordinates import solar_system_ephemeris
import astropy.units as u

monkey_patch()

st_queue = None
app = Flask(__name__, static_url_path='/static', static_folder='../client/')
socketio = SocketIO(app, async_mode='eventlet', logger=True, engineio_logger=True)
settings = None
settings_json_lock = threading.RLock()
db_lock = threading.RLock()
conn = sqlite3.connect('ssteq.sqlite', check_same_thread=False)

runtime_settings = {'time_been_set': False, 'earth_location': None, 'sync_info': None}


@app.route('/')
def root():
    return redirect('/static/index.html')


@app.route('/settings')
def settings_get():
    return jsonify(settings)


@app.route('/settings', methods=['PUT'])
def settings_put():
    global settings
    print('settings_put')
    settings_buffer = {}
    args = json.loads(request.form['settings'])
    keys = ["ra_track_rate", "ra_slew_fast", "ra_slew_slow", "dec_slew_fast", "dec_slew_slow", "dec_ticks_per_degree",
            "ra_max_accel_tpss", "dec_max_accel_tpss"]
    for key in keys:
        if key in args:
            settings_buffer[key] = float(args[key])
    keys = ["ra_max_tps", "ra_guide_rate", "ra_direction", "dec_max_tps", "dec_guide_rate", "dec_direction"]
    for key in keys:
        if key in args:
            if 'micro' not in settings_buffer:
                settings_buffer['micro'] = {}
            settings_buffer['micro'][key] = float(args[key])

    keys = ["ra_track_rate", "ra_slew_fast", "ra_slew_slow", "dec_slew_fast", "dec_slew_slow", "dec_ticks_per_degree",
            "ra_max_accel_tpss", "dec_max_accel_tpss"]
    for key in keys:
        if key in args:
            settings[key] = float(settings_buffer[key])
    keys = ["ra_max_tps", "ra_guide_rate", "ra_direction", "dec_max_tps", "dec_guide_rate", "dec_direction"]
    for key in keys:
        if key in args:
            if 'micro' not in settings_buffer:
                settings_buffer['micro'] = {}
            settings['micro'][key] = float(settings_buffer['micro'][key])
    with settings_json_lock:
        with open('settings.json', mode='w') as f:
            json.dump(settings, f)
    control.micro_update_settings()
    print('return')
    return '', 204


@app.route('/set_location', methods=['PUT'])
def set_location():
    location = request.form.get('location', None)
    location = json.loads(location)
    print(location)
    if 'lat' not in location or 'long' not in location or 'name' not in location:
        return 'Missing arguments', 400
    location = {'lat': float(location['lat']), 'long': float(location['long']), 'name': str(location['name'])}
    old_location = settings['location']
    settings['location'] = location
    try:
        control.update_location()
    except:
        settings['location'] = old_location
        traceback.print_exc(file=sys.stdout)
        return 'Invalid location', 400
    with settings_json_lock:
        with open('settings.json', mode='w') as f:
            json.dump(settings, f)
    return 'Set Location', 200


@app.route('/sync', methods=['PUT'])
def do_sync():
    ra = float(request.form.get('ra', None))
    dec = float(request.form.get('dec', None))
    control.sync(ra, dec)
    return 'Synced', 200


@app.route('/slewto', methods=['PUT'])
def do_slewto():
    ra = float(request.form.get('ra', None))
    dec = float(request.form.get('dec', None))
    control.slew(ra, dec)
    return 'Slewing', 200


@app.route('/slewto', methods=['DELETE'])
def stop_slewto():
    control.cancel_slews()
    return 'Stopping Slew', 200


@app.route('/set_time', methods=['PUT'])
def set_time():
    s = datetime.datetime.now()
    time = request.form.get('time', None)
    overwrite = request.form.get('overwrite', None)
    if runtime_settings['time_been_set'] and not overwrite:
        return 'Already Set', 200
    d = iso8601.parse_date(time)
    ntpstat = subprocess.run(['/usr/bin/ntpstat'])
    if ntpstat.returncode != 0:
        d = d + (datetime.datetime.now() - s)
        time = d.isoformat()
        daterun = subprocess.run(['/usr/bin/sudo', '/bin/date', '-s', time])
        if daterun.returncode == 0:
            runtime_settings['time_been_set'] = True
            return 'Date Set', 200
        else:
            return 'Failed to set date', 500
    runtime_settings['time_been_set'] = True
    return 'NTP Set', 200


def to_list_of_lists(tuple_of_tuples):
    b = [list(x) for x in tuple_of_tuples]
    return b


@app.route('/search_object', methods=['GET'])
def search_object():
    do_altaz = True
    search = request.args.get('search', None)
    if not search:
        return
    planet_search = search.lower()
    bodies = solar_system_ephemeris.bodies
    planets = []
    for body in bodies:
        if body.find('earth') != -1:
            continue
        if body.find(planet_search) != -1:
            coord = astropy.coordinates.get_body(body, astropy.time.Time.now(),
                                                 location=runtime_settings['earth_location'])
            ra = coord.ra.deg
            dec = coord.dec.deg
            coord = astropy.coordinates.SkyCoord(ra=ra * u.deg, dec=dec * u.deg, frame='icrs')
            if do_altaz:
                altaz = control.to_altaz_asdeg(coord)
            else:
                altaz={'alt': None, 'az': None}
            planets.append(
                [body.title(), coord.icrs.ra.deg * 24.0 / 360.0, coord.icrs.dec.deg, altaz['alt'], altaz['az']])
    dso_search = search
    star_search = search
    if re.match(r'.*\d+$', search):
        dso_search = '%' + dso_search + '|%'
        star_search = '%' + star_search
    else:
        dso_search = '%' + dso_search + '%'
        star_search = '%' + star_search + '%'
    # catalogs = {'IC': ['IC'], 'NGC': ['NGC'], 'M': ['M', 'Messier'], 'Pal': ['Pal'], 'C': ['C', 'Caldwell'], 'ESO': ['ESO'], 'UGC': ['UGC'], 'PGC': ['PGC'], 'Cnc': ['Cnc'], 'Tr': ['Tr'], 'Col': ['Col'], 'Mel': ['Mel'], 'Harvard': ['Harvard'], 'PK': ['PK']}
    with db_lock:
        cur = conn.cursor()
        cur.execute('SELECT * from dso where search like ? limit 10', (dso_search,))
        dso = cur.fetchall()
        cur.execute('SELECT * from stars where bf like ? or proper like ? limit 10', (star_search, star_search))
        stars = cur.fetchall()
        cur.close()
    dso = to_list_of_lists(dso)
    stars = to_list_of_lists(stars)
    # Alt az
    for ob in dso:
        if do_altaz:
            coord = astropy.coordinates.SkyCoord(ra=(360.0 / 24.0) * float(ob[0]) * u.deg, dec=float(ob[1]) * u.deg,
                                                 frame='icrs')
            altaz = control.to_altaz_asdeg(coord)
        else:
            altaz = {'alt': None, 'az': None}
        ob.append(altaz['alt'])
        ob.append(altaz['az'])
    for ob in stars:
        if do_altaz:
            coord = astropy.coordinates.SkyCoord(ra=(360.0 / 24.0) * float(ob[7]) * u.deg, dec=float(ob[8]) * u.deg,
                                                 frame='icrs')
            altaz = control.to_altaz_asdeg(coord)
        else:
            altaz = {'alt': None, 'az': None}
        ob.append(altaz['alt'])
        ob.append(altaz['az'])

    return jsonify({'dso': dso, 'stars': stars, 'planets': planets})


@app.route('/search_location', methods=['GET'])
def search_location():
    search = request.args.get('search', None)
    if not search:
        return
    search = search.strip()
    # If zipcode search
    if re.match(r'\d+$', search):
        search = search + '%'
        with db_lock:
            cur = conn.cursor()
            cur.execute('SELECT * from uscities where postalcode like ? limit 20', (search,))
            cities = cur.fetchall()
            cur.close()
            return jsonify({'cities': cities})
    else:
        cstate = search.split(',')
        if len(cstate) == 1:
            # Just search city
            city = cstate[0]
            city = city.strip()
            search = city + '%'
            cur = conn.cursor()
            cur.execute('SELECT * from uscities where city like ? limit 20', (search,))
            cities = cur.fetchall()
            cur.close()
            return jsonify({'cities': cities})
        else:
            city = cstate[0]
            state = cstate[1]

            city = city.strip()
            state = state.strip()
            # If using state abbreviation
            if len(state) == 2:
                abbr = state.upper()
                cur = conn.cursor()
                city = city + '%'
                cur.execute('SELECT * from uscities where city like ? and state_abbr = ? limit 20', (city, abbr))
                cities = cur.fetchall()
                cur.close()
                return jsonify({'cities': cities})
            else:
                # State must be full name
                cur = conn.cursor()
                city = city + '%'
                state = state + '%'
                cur.execute('SELECT * from uscities where city like ? and state like ? limit 20', (city, state))
                cities = cur.fetchall()
                cur.close()
                return jsonify({'cities': cities})


@socketio.on('manual_control')
def manual_control(message):
    emit('controls_response', {'data': 33})
    print("Got %s" + json.dumps(message))
    control.manual_control(message['direction'], message['speed'])
    emit('controls_response', {'data': 33})


def main():
    global st_queue, settings
    with settings_json_lock:
        with open('settings.json') as f:
            settings = json.load(f)
    st_queue = control.init(socketio, settings, runtime_settings)
    print('Running...')
    socketio.run(app, host="0.0.0.0", debug=True, log_output=True, use_reloader=False)


if __name__ == '__main__':
    main()
