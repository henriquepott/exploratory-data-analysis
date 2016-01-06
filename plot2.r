source("loader.R")

png(file = "plot2.png", width = 480, height = 480)
plot(subdf$Time, subdf$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
