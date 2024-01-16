from aiogram.types import InlineQueryResultArticle, InputLocationMessageContent
from dadata import Dadata
from data.config import DADATA_TOKEN
from aiogram.types import Location
from numpy import sin, cos, arccos, pi, round

dadata = Dadata(DADATA_TOKEN)


async def get_autocompletion_inline_results(base_address, location=None):
    results = []
    addresses = await autocompletion_address(base_address, location=location)

    for i, address in enumerate(addresses):
        title = await get_str_address_from_dadata_result(address)
        data = address.get("data", {})
        geo_lat, geo_lon = (data.get("geo_lat"), data.get("geo_lon"))
        if title and geo_lat and geo_lon:
            results.append(
                InlineQueryResultArticle(
                    id=str(i),
                    title=title,
                    input_message_content=InputLocationMessageContent(
                        latitude=float(geo_lat), longitude=float(geo_lon)
                    ),
                    description=address.get("value") + f"Sity: {data.get('city')}",
                )
            )

    return results


async def autocompletion_address(base_address, location=None):
    result = dadata.suggest("address", base_address)
    return result


async def get_str_address_from_dadata_result(result):
    data = result.get("data")
    string = []
    city = data.get("settlement", data.get("city"))
    street = data.get("street", "")
    house = data.get("house", "")

    if city:
        string.append(city)
        if street:
            string.append(street)
        if house:
            string.append(house)
    else:
        return result.get("value")

    return ", ".join(string)


async def get_sity_from_location(location: Location):
    data = dadata.geolocate(name="address", lon=location.longitude, lat=location.latitude)[0].get('data')
    if data.get('city'):
        return data['city']
    elif data.get('settlement'):
        return data['settlement']
    else:
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