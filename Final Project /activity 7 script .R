#install packages to read data 
install.packages(c("sp","rgdal","dplyr"))

#package for vector data
library(sp)
#package for reading in spatial data
library(rgdal)
#data manangement package
library(dplyr)

#get the data 
#data for the arctic ice 

#######seaice1979###########
seaice1979 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_197909_polygon_v3.0/extent_N_197909_polygon_v3.0.shp")

str(seaice1979)

head(seaice1979@data)
seaice1979@proj4string

seaice1979@data$FID

########seaice1980#########
seaice1980 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198009_polygon_v3.0/extent_N_198009_polygon_v3.0.shp")

str(seaice1980)

head(seaice1980@data)
seaice1980@proj4string

seaice1980@data$FID

#####the rest of the sea ice polygons######
seaice1981 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198109_polygon_v3.0/extent_N_198109_polygon_v3.0.shp")
seaice1982 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198209_polygon_v3.0/extent_N_198209_polygon_v3.0.shp")
seaice1983 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198309_polygon_v3.0/extent_N_198309_polygon_v3.0.shp")
seaice1984 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198409_polygon_v3.0/extent_N_198409_polygon_v3.0.shp")
seaice1985 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198509_polygon_v3.0/extent_N_198509_polygon_v3.0.shp")
seaice1986 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198609_polygon_v3.0/extent_N_198609_polygon_v3.0.shp")
seaice1987 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198709_polygon_v3.0/extent_N_198709_polygon_v3.0.shp")
seaice1988 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198809_polygon_v3.0/extent_N_198809_polygon_v3.0.shp")
seaice1989 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198909_polygon_v3.0/extent_N_198909_polygon_v3.0.shp")
seaice1990 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199009_polygon_v3.0/extent_N_199009_polygon_v3.0.shp")
seaice1991 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199109_polygon_v3.0/extent_N_199109_polygon_v3.0.shp")
seaice1992 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199209_polygon_v3.0/extent_N_199209_polygon_v3.0.shp")
seaice1993 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199309_polygon_v3.0/extent_N_199309_polygon_v3.0.shp")
seaice1994 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199409_polygon_v3.0/extent_N_199409_polygon_v3.0.shp")
seaice1995 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199509_polygon_v3.0/extent_N_199509_polygon_v3.0.shp")
seaice1996 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199609_polygon_v3.0/extent_N_199609_polygon_v3.0.shp")
seaice1997 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199709_polygon_v3.0/extent_N_199709_polygon_v3.0.shp")
seaice1998 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199809_polygon_v3.0/extent_N_199809_polygon_v3.0.shp")
seaice1999 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_199909_polygon_v3.0/extent_N_199909_polygon_v3.0.shp")
seaice2000 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200009_polygon_v3.0/extent_N_200009_polygon_v3.0.shp")
seaice2001 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200109_polygon_v3.0/extent_N_200109_polygon_v3.0.shp")
seaice2002 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200209_polygon_v3.0/extent_N_200209_polygon_v3.0.shp")
seaice2003 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200309_polygon_v3.0/extent_N_200309_polygon_v3.0.shp")
seaice2004 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200409_polygon_v3.0/extent_N_200409_polygon_v3.0.shp")
seaice2005 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200509_polygon_v3.0/extent_N_200509_polygon_v3.0.shp")
seaice2006 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200609_polygon_v3.0/extent_N_200609_polygon_v3.0.shp")
seaice2007 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200709_polygon_v3.0/extent_N_200709_polygon_v3.0.shp")
seaice2008 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200809_polygon_v3.0/extent_N_200809_polygon_v3.0.shp")
seaice2009 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_200909_polygon_v3.0/extent_N_200909_polygon_v3.0.shp")
seaice2010 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201009_polygon_v3.0/extent_N_201009_polygon_v3.0.shp")
seaice2011 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201109_polygon_v3.0/extent_N_201109_polygon_v3.0.shp")
seaice2012 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201209_polygon_v3.0/extent_N_201209_polygon_v3.0.shp")
seaice2013 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201309_polygon_v3.0/extent_N_201309_polygon_v3.0.shp")
seaice2014 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201409_polygon_v3.0/extent_N_201409_polygon_v3.0.shp")
seaice2015 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201509_polygon_v3.0/extent_N_201509_polygon_v3.0.shp")
seaice2016 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201609_polygon_v3.0/extent_N_201609_polygon_v3.0.shp")
seaice2017 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201709_polygon_v3.0/extent_N_201709_polygon_v3.0.shp")
seaice2018 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201809_polygon_v3.0/extent_N_201809_polygon_v3.0.shp")
seaice2019 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_201909_polygon_v3.0/extent_N_201909_polygon_v3.0.shp")


#######question 5######


#######join data######
head(seaice1979@data)
seaice1979@proj4string

head(seaice2019@data)
seaice1979@proj4string

ice1979 <- data.frame(FID = seaice1979@data$FID,
                    area1979 = seaice1979@data$FID)

ice2019 <- data.frame(FID = seaice2019@data$FID,
                      area2019 = seaice2019@data$FID)

iceall <- full_join(ice1979,ice2019, by="FID")

iceall$icediff <- ((iceall$area1979-iceall$area2019)/iceall$area1979)*100

#no data to combine???

#no data to get mean and standard deviation from

#####make a plot######
plot(seaice1979, col="blue")
plot(seaice2019, col="gray", add=TRUE)
title(main = "Change in Sea Ice in the Arctic from 1979-2019")
legend("topleft",
       c("1979", "2019"),
       col=c("blue","gray"),
       lwd=5,
       bty="n")



