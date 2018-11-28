# install the below packages for visualization purposes if not done so
#install.packages("mregions")
#install.packages("leaflet")
#install.packages("rgdal")

# load libraries
library("mregions")
library("leaflet")
library("rgdal")

# read corresponding eez shapefile from current directory (.) 
# change the filename in layer e.g. layer = "eez"

eez <- readOGR(dsn = "./eez_vietnam/", layer = "eez")

# put the shp object(SpatialPolygonsDataFrame) into the below code to view:

leaflet() %>%
  addProviderTiles(provider = 'OpenStreetMap') %>%
  addPolygons(data = eez)
