datB <- read.csv("/Users/kristenbitsberger/Documents/GitHub/ENVST206/Activity 4/a04/beaver_dam.csv")
head(datB)

plot(datB$dams.n, datB$area.h, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Surface water area (ha)",
     xlab =  "Number of beaver dams")

#set up regression
dam.mod <- lm(datB$area.ha ~ datB$dams.n)
#get standarized residuals
dam.res <- rstandard(dam.mod)

#set up qq plot
qqnorm(dam.res)
#add qq line
qqline(dam.res)

shapiro.test(dam.res)

#make residual plot
plot(datB$dams.n, dam.res, 
     xlab = "beaver damns", 
     ylab = "standardized residual")
#add a horizontal line at zero
abline(h=0)

summary(dam.mod )

#make plot of beaver dams and surface water
plot(datB$dams.n, datB$area.h, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Surface water area (ha)",
     xlab =  "Number of beaver dams")
#add regression line
#make line width thicker
abline(dam.mod, lwd=2)

summary(dam.mod)

pheno <- read.csv("/Users/kristenbitsberger/Documents/GitHub/ENVST206/Activity 4/a04/red_maple_pheno.csv")

#set up panel of plots with one row and two columns
par(mfrow=c(1,2))
plot(pheno$Tmax,pheno$doy, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Day of leaf out",
     xlab =  "Maximum temperature (C)")
plot(pheno$Prcp,pheno$doy, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Day of leaf out",
     xlab =  "Precipitation (mm)")

#question 3
par(mfrow=c(1,2))
plot(pheno$Lat,pheno$doy, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Day of leaf out",
     xlab =  "Latitude (degrees)")

par(mfrow=c(1,2))
plot(pheno$elev,pheno$doy, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Day of leaf out",
     xlab =  "Elevation (m)")

par(mfrow=c(1,2))
plot(pheno$Tmax,pheno$doy, 
     pch = 19, 
     col = "royalblue4",
     ylab = "Day of leaf out",
     xlab =  "Maximum temperature (C)")

plot(as.factor(pheno$siteDesc), pheno$doy, xlab ="Urban/Rural", 
     ylab="Day of lead out")



dev.off()

plot( ~  pheno$Lat + pheno$Tmax+ pheno$Tmin +pheno$Prcp + pheno$elev + pheno$siteDesc)

pheno$urID <- ifelse(pheno$siteDesc == "Urban",1,0)

mlr <- lm(pheno$doy ~  pheno$Tmax  + pheno$Prcp + pheno$elev + pheno$urID)

mlFitted <- fitted(mlr)

#question 6
mlr <- lm(pheno$doy ~ pheno$Tmax + pheno$Prcp + pheno$elev + pheno$urID)
mlFitted <- fitted(mlr)
mlr.res <- rstandard(mlr)

qqnorm(mlr.res)
qqline(mlr.res)

plot(mlFitted, mlr.res,
     xlab = "Fitted",
     ylab = "standard residual")
abline(h=0)


summary(mlr)













