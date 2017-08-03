source("./ExploratoryData1/loadData.R")

# Save to png

png(file = "./ExploratoryData1/plot1.png", height = 480, width = 480, units = "px")

hist(hpc$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

# close the png graphics device

dev.off()