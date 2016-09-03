## set working directory and load data
getwd()

## create a date time variable
ds1$dateTime <- ds1$Date + ds1$Time

## create x label
xlabel <- wday(ds1$Date, label = TRUE)

## save graph to png (480 x 480)
dev.copy()
png(file = "/Users/kenziecarnahan/Desktop/plot2.png", 480, 480)

## plot 2 of Global Active Power by Time
plot(ds1$dateTime, ds1$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)"
     )

## turn dev off
dev.off()
