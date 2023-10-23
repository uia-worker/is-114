import math

krs_pos = {'lat': 58.144976, 'long': 7.988925}
osl_pos = {'lat': 59.903738, 'long': 10.758328}
pi = 3.141592653589793


def haversine(pos1, pos2):
    lat1 = float(pos1['lat'])
    long1 = float(pos1['long'])
    lat2 = float(pos2['lat'])
    long2 = float(pos2['long'])

    degree_to_rad = float(pi / 180.0)

    d_lat = (lat2 - lat1) * degree_to_rad
    d_long = (long2 - long1) * degree_to_rad

    a = math.pow(math.sin(d_lat / 2), 2) + math.cos(lat1 * degree_to_rad) * math.cos(lat2 * degree_to_rad) * math.pow(math.sin(d_long / 2), 2)
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    km = 6367 * c
    mi = 3956 * c

    return {"km":km, "miles":mi}

print(haversine(krs_pos, osl_pos))