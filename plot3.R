## save graph to png (480 x 480)
dev.copy()
png(file = "/Users/kenziecarnahan/Desktop/plot3.png", 480, 480)

## plot 3 submetering
plot(ds1$dateTime, ds1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(ds1$dateTime, ds1$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
points(ds1$dateTime, ds1$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("sub metering 1", "sub metering 2", "sub metering 3"))

## turn dev off
dev.off()