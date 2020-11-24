###install packages to read data###
install.packages(c("sp","rgdal","dplyr"))

#package for vector data
library(sp)
#package for reading in spatial data
library(rgdal)
#data manangement package
library(dplyr)


###read in data### 

#single years of sea ice data
seaice1979 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_197909_polygon_v3.0/extent_N_197909_polygon_v3.0.shp")
seaice1980 <- readOGR("/Users/kristenbitsberger/Documents/Arctic sea ice/sea_ice/extent_N_198009_polygon_v3.0/extent_N_198009_polygon_v3.0.shp")
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

#sea ice data combined 
seaiceall <- readOGR("/Users/kristenbitsberger/Documents/sea_ice_all/sea_ice_all.shp")

#temperature data
globaltemp <-read.csv("/Users/kristenbitsberger/Documents/globaltemp.csv", skip = 2, header = TRUE)


###statistical test###

#get area of sea ice
seaiceall@data$area <- area(seaiceall)
seaiceall@data
seaicearea <- aggregate(seaiceall@data$area, by = list(seaiceall@data$year), "sum")
seaicearea
colnames(seaicearea) <- c("Year", "Area")

#combine sea ice and temp
dataall <- full_join(seaicearea, globaltemp, by="Year")
dall <- dataall[,-(4),drop=FALSE]

##linear regression##
dat.mod <- lm(dall$Area ~ dall$Temperature)
dat.res <- rstandard(dat.mod)

#check assumptions
qqnorm(dat.res)
qqline(dat.res)

shapiro.test(dat.res)

#linear reg for sea ice 
ice.mod <- lm(seaicearea$Area ~ seaicearea$Year)
ice.res <- rstandard(ice.mod)

#check assumptions 
qqnorm(ice.res)
qqline(ice.res)

shapiro.test(ice.res)

summary(ice.mod)

#plot linear regression
plot(seaicearea$Year, seaicearea$Area, 
     pch = 19, 
     ylab = "Arctic Sea Ice Area (kilometers squared)",
     xlab =  "Year")
title(main = "Linear Regression Model for The Arctic Sea Ice Area")
abline(ice.mod)

#linear reg for temp
temp.mod <- lm(temp$`Change in Temperature (C)` ~ temp$Year)
temp.res <- rstandard(temp.mod)

#check assumptions 
qqnorm(temp.res)
qqline(temp.res)

shapiro.test(temp.res)


###plots###
#plot temperature
temp <- globaltemp[,-(3),drop=FALSE]
colnames(temp) <- c("Year", "Change in Temperature (C)")
plot(temp, pch=19)
title(main = "Annual Mean Change in Global Temperatures from 1880-2020")

#plot all all the data (dall)
colnames(dall) <- c("Year", "Area", "Temperature")
plot(dall, pch=19)

#plot sea ice area
colnames(seaicearea) <- c("Year", "Area (kilometers squared)")
plot(seaicearea, pch=19)
title(main = "Arctic Sea Ice Area")

#plot of 1979 and 2019
plot(seaice1979, col="blue")
plot(seaice2019, col="gray", add=TRUE)
title(main = "Change in Sea Ice in the Arctic from 1979-2019")
legend("topleft",
       c("1979", "2019"),
       col=c("blue","gray"),
       lwd=5,
       bty="n")










