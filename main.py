
import pprint
import geocoder
g = geocoder.osm('Уварово центральная улица', maxRow=5)
pprint.pprint(g.json)