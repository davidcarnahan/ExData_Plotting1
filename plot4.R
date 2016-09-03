## save graph to png (480 x 480)
dev.copy()
png(file = "/Users/kenziecarnahan/Desktop/plot4.png")

## data prep
ds1$Voltage <- as.numeric(ds1$Voltage)
ds1$Global_reactive_power <- as.numeric(ds1$Global_reactive_power) / 1000

## create container for graphs
par(mfrow = c(2,2))

## plot 1
plot(ds1$dateTime, ds1$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)"
)

## plot 2
plot(ds1$dateTime, ds1$Voltage, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Voltage"
)

## plot 3 submetering
plot(ds1$dateTime, ds1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(ds1$dateTime, ds1$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
points(ds1$dateTime, ds1$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("sub metering 1", "sub metering 2", "sub metering 3"))

## plot 4
plot(ds1$dateTime, ds1$Global_reactive_power, 
     type = "l", 
     xaxt = 'n',
     xlab = "datetime", 
     ylab = "Global_reactive_power"
)

## turn dev off
dev.off()
