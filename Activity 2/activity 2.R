#vectors
#make a vector of tree heights in meters
heights <- c(30,41,20,22)
#convert to cm
heights_cm <- heights*100
heights_cm
#look at first tree height
heights[1]
#look at the 2nd and 3rd tree heights
heights[2:3]

#matrices 
#get more info on matrix function 
help(matrix)
#set up matrix with 2 columns and fill in by rows
#first argument is the vector of numbers to fill in the matrix
Mat<-matrix(c(1,2,3,4,5,6), ncol=2, byrow=TRUE)
Mat
#set up a matrix that fills in by columns
#first argument is the vector of numbers to fill in the matrix
Mat.bycol<-matrix(c(1,2,3,4,5,6), ncol=2, byrow=FALSE)
Mat.bycol
#subset the matrix to look at row 1, column 2
Mat.bycol[1,2]
#look at all the values in row 1
Mat.bycol[1, ]
#look at all values in column 2
Mat.bycol[2, ]

#dataframes
#read in weather file station from the data folder
datW <- read.csv("/Users/kristenbitsberger/Documents/GitHub/ENVST206/Activity 2/Data/a02/noaa2011124.csv")
#get more information about the dataframe
str(datW)
datW$NAME <- as.factor(datW$NAME)

#question 2
#character example
characters <- c("a","b","c","d","e")
#number example
numbers <- c(1.5,2,3,4.3,5.2)
#integer example
integers <- c(1,2,3,4,5)
#factor example
factors <- c("f","g","h","i","j")

#descriptive statistics and histograms
#find out all unique site names
levels(datW$NAME)
#look at the maximum temperature for Aberdeen
mean(datW$TMAX[datW$NAME == "ABERDEEN, WA US"])
#look at mean maximum temperature for Aberdeen
#with na.rm argument set to true to ignore NA
mean(datW$TMAX[datW$NAME == "ABERDEEN, WA US"], na.rm=TRUE)
#calculate the average daily temperature
#This temperature will be halfway between the minimum and maximum temperature
datW$TAVE <- datW$TMIN + ((datW$TMAX-datW$TMIN)/2)

#get the mean across all sites
#the by function is a list of one or more variables to index over.
#FUN indicates the function we want to use
#if you want to specify any function specific arguments use a comma and add them after the function
#here we want to use the na.rm arguments specific to 
averageTemp <- aggregate(datW$TAVE, by=list(datW$NAME), FUN="mean",na.rm=TRUE)
averageTemp

#change the automatic output of column names to be more meaningful
#note that MAAT is a common abbreviation for Mean Annual Air Temperature
colnames(averageTemp) <- c("NAME","MAAT")
averageTemp

#convert level to number for factor data type
#you will have to reference the level output or look at the row of data to see the character designation.
datW$siteN <- as.numeric(datW$NAME)

#make a histogram for the first site in our levels
#main= is the title name argument.
#Here you want to paste the actual name of the factor not the numeric index
#since that will be more meaningful. 
hist(datW$TAVE[datW$siteN == 1],
     freq=FALSE, 
     main = paste(levels(datW$NAME)[1]),
     xlab = "Average daily temperature (degrees C)", 
     ylab="Relative frequency",
     col="grey75",
     border="white")

#question 3
help("hist")

#question 4
hist(datW$TAVE[datW$siteN == 2],
     freq=FALSE, 
     main = paste(levels(datW$NAME)[2]),
     xlab = "Average daily temperature (degrees C)", 
     ylab="Relative frequency",
     col="grey75",
     border="white")

help(dnorm)
#pnorm(value to evaluate at (note this will evaluate for all values and below),mean, standard deviation)
pnorm(0,
      mean(datW$TAVE[datW$siteN == 1],na.rm=TRUE),
      sd(datW$TAVE[datW$siteN == 1],na.rm=TRUE))
#pnrom with 5 gives me all probability (area of the curve) below 5 
pnorm(5,
      mean(datW$TAVE[datW$siteN == 1],na.rm=TRUE),
      sd(datW$TAVE[datW$siteN == 1],na.rm=TRUE))

#pnrom of 20 gives me all probability (area of the curve) below 20 
#subtracting from one leaves me with the area above 20
1 - pnorm(20,
          mean(datW$TAVE[datW$siteN == 1],na.rm=TRUE),
          sd(datW$TAVE[datW$siteN == 1],na.rm=TRUE))
#qnorm gives me the value at which all values and below equal the probability in my argument
#Here I'm calculating the value of the 95th quantile or a probability of 0.95
qnorm(0.95,
      mean(datW$TAVE[datW$siteN == 1],na.rm=TRUE),
      sd(datW$TAVE[datW$siteN == 1],na.rm=TRUE))

#question 5
pnorm(20,
      mean=26.01901,
      sd(datW$TAVE[datW$siteN == 1],na.rm=TRUE)) 
qnorm(0.95,
      mean=26.01901,
      sd(datW$TAVE[datW$siteN == 1],na.rm=TRUE))

#question 6
hist(datW$PRCP[datW$siteN == 1],
     freq=FALSE, 
     main = paste(levels(datW$NAME)[1]),
     xlab = "Average daily precipitation", 
     ylab="Relative frequency",
     col="grey75",
     border="white")

#question 7
annualPRCP <- aggregate(datW$PRCP, by=list(datW$NAME, datW$year), FUN="mean",na.rm=TRUE)
colnames(annualPRCP) <- c("NAME", "YEAR", "Annual PRCP")
annualPRCP
annualPRCP$NAME <- as.numeric(annualPRCP$NAME)
annualPRCP$NAME

#question 8 
hist(annualPRCP$`Annual PRCP`[annualPRCP$NAME == 1],
     freq=FALSE, 
     main = paste(levels(datW$NAME)[1]),
     xlab = "Average annual precipitation", 
     ylab="Relative frequency",
     col="grey75",
     border="white")

hist(annualPRCP$`Annual PRCP`[annualPRCP$NAME == 3],
     freq=FALSE, 
     main = paste(levels(datW$NAME)[3]),
     xlab = "Average annual precipitation", 
     ylab="Relative frequency",
     col="grey75",
     border="white")

#question 9

pnorm(700,
      mean(annualPRCP$`Annual PRCP`[annualPRCP$NAME == 1],na.rm=TRUE),
      sd(annualPRCP$`Annual PRCP`[annualPRCP$NAME == 1],na.rm=TRUE)) 

pnorm(700,
      mean(annualPRCP$`Annual PRCP`[annualPRCP$NAME == 3],na.rm=TRUE),
      sd(annualPRCP$`Annual PRCP`[annualPRCP$NAME == 3],na.rm=TRUE)) 









