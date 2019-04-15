# List of Fun API's to Use in PowerApps

- **Created:** Sun 01/06/2019 06:39 PM PST
- **Updated:** Sun 04/07/2019 10:00 AM PST

## Biological:

- [United States Dept. of Agriculture Food Composition Database](https://ndb.nal.usda.gov/ndb/search/list)
- [NutritionIX](https://developer.nutritionix.com/)

## Environmental

- [Open Weather Map](https://openweathermap.org/api)
  - Given `latitude` and `longitude`
  - Returns objects such as:
    - Sunrise Time in UTC
    - Sunset Time in UTC
    - Current Weather Description
      - Temperature
      - Low Temp
      - High Temp
      - Humidity
      - Wind Speed
      - Wind Direction
      - Wind Gust
      - Rain
      - Clouds
  - Air Quality (Beta)
    - CO, O3, SO2, NO2
- [USGS Earthquake API](https://earthquake.usgs.gov/fdsnws/event/1/)
    - Given `latitude` and `longitude`
    - Returns objects such as:
      - Earthquake type
      - Magnitude
      - Radius

## Time

- [Azure Maps: Timezone API](https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezonebycoordinates)
  - Given `latitude` and `longitude`
  - Returns objects such as: 
     - UTC
     - Local Time
     - Local Offset from UTC
     - Daylight Savings Time Offset, Timezone Name, etc.
  - Requires an Azure maps account

## Space

- [Azure Maps: Address Search Reverse GeoCode](https://docs.microsoft.com/en-us/rest/api/maps/search/getsearchaddressreverse)
  - Given `latitude` and `longitude`
  - Returns objects such as:
    - Country
    - State
    - County
    - Municipality
    - Neighborhood
    - Zip Code
    - Nearest Building Number
    - Nearest Street
    - Nearest Full Address
- [Azure Maps: Get Map Image](https://docs.microsoft.com/en-us/rest/api/maps/render/getmapimage)
  - Given `latitude` and `longitude`
  - Returns objects such as: 
    - A `.png` image according to `width`, `height`, `center` parameters you specify.
    - Was offering a `path` on this said map tile, but [its been removed due to errors I brought up](https://github.com/MicrosoftDocs/azure-docs/issues/21449#issuecomment-451804267).
- [Open Notify: Get Int. Space Station Location!](http://open-notify.org/)
  - Given `latitude` and `longitude`
  - Returns location of ISS OR
  - Returns the next datetime the ISS will cross your lat/long!, Cool!
    
## Technical

- [Google Charts QR Creator](https://developers.google.com/chart/infographics/docs/qr_codes)
  - Given textual data
  - Returns a QR code!
  - Free!
