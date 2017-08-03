source("./ExploratoryData1/loadData.R")

# Save to png
png(file = "./ExploratoryData1/plot4.png", height = 480, width = 480, units = "px")

par(mfrow=c(2,2))

# 1
plot(hpc$Time, hpc$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

# 2
plot(hpc$Time, hpc$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

# 3
plot(hpc$Time, hpc$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(hpc$Time, hpc$Sub_metering_2, col="red")
lines(hpc$Time, hpc$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

# 4
plot(hpc$Time, hpc$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(hpc$Time, hpc$Global_reactive_power)

dev.off()
