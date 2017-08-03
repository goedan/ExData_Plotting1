source("./ExploratoryData1/loadData.R")

# Save to png
png(file = "./ExploratoryData1/plot3.png", height = 480, width = 480, units = "px")

plot(hpc$Time, hpc$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(hpc$Time, hpc$Sub_metering_2, col = "red")
lines(hpc$Time, hpc$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

dev.off()