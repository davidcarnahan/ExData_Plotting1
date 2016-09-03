## set working directory and load data
getwd()
setwd("~/Desktop/")
ds <- read.table("household_power_consumption.txt",header = TRUE, sep = ";")

## data prep
ds$Date <- dmy(ds$Date)
ds$Time <- hms(ds$Time)
ds1$Global_active_power <- as.numeric(ds1$Global_active_power) / 1000 
d1 <- as.Date(dmy("01/02/2007"))
d2 <- as.Date(dmy("02/02/2007"))

## subset dataset for dates of interest
ds1 <- subset(ds, ds$Date >= d1 & ds$Date <= d2)

## save graph to png (480 x 480)
dev.copy()
png(file = "/Users/kenziecarnahan/Desktop/plot1.png", 480, 480)

## plot histogram graph
hist(as.numeric(ds1$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

## turn dev off
dev.off()
