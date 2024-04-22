import pprint
import requests
from aiogram.types import InlineQueryResultArticle, InputLocationMessageContent
from dadata import Dadata
from data.config import DADATA_TOKEN
from aiogram.types import Location
from numpy import sin, cos, arccos, pi, round
import geocoder
dadata = Dadata(DADATA_TOKEN)


async def get_autocompletion_inline_results(base_address, location=None):
    results = []
    addresses = await autocompletion_address(base_address, location=location)
    print(addresses, type(addresses))
    if addresses is None:
        return []
    if type(addresses) == dict:
        addresses = [addresses]
    for i, address in enumerate(addresses):
        print(f"{address=}")
        address = address["raw"]
     #   raise Exception(address, type(address))
        title = await get_str_address_from_dadata_result(address)
        data = address
        geo_lat, geo_lon = (data.get("lat"), data.get("lon"))
        if title and geo_lat and geo_lon:
            results.append(
                InlineQueryResultArticle(
                    id=str(i),
                    title=title,
                    input_message_content=InputLocationMessageContent(
                        latitude=float(geo_lat), longitude=float(geo_lon)
                    ),
                    description=address.get("value", "") + f"Sity: {data.get('state')}",
                )
            )

    return results


async def autocompletion_address(base_address, location=None):
    result = geocoder.osm(f"{base_address}", maxRows=5)
    return result.json


async def get_str_address_from_dadata_result(result):

    return result['display_name']


async def get_str_address_from_dadata_result(result):
    return result['display_name']


async def get_sity_from_location(location: Location):
    data = requests.get(f"https://nominatim.openstreetmap.org/reverse?format=json&lat={location.latitude}&lon={location.longitude}").json()
    pprint.pprint(data)
    if data.get('raw'):
        if data.get('address'):
            if data.get('peak'):
                return data['raw']['address']['peak']
    return ""



def rad2deg(radians):
    degrees = radians * 180 / pi
    return degrees

def deg2rad(degrees):
    radians = degrees * pi / 180
    return radians

def getDistanceBetweenPointsNew(latitude1, longitude1, latitude2, longitude2):
    
    theta = longitude1 - longitude2
    
    distance = 60 * 1.1515 * rad2deg(
        arccos(
            (sin(deg2rad(latitude1)) * sin(deg2rad(latitude2))) + 
            (cos(deg2rad(latitude1)) * cos(deg2rad(latitude2)) * cos(deg2rad(theta)))
        )
    )
    
    return round(distance * 1.609344, 2)