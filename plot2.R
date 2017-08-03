source("./ExploratoryData1/loadData.R")

# Save to png
png(file = "./ExploratoryData1/plot2.png", height = 480, width = 480, units = "px")

plot(hpc$Time, hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts"))

# close the png graphics device
dev.off()
