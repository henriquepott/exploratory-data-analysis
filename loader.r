arq <- "household_power_consumption.txt"
df <- read.table(arq, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
df$Date <- as.Date(df$Date, "%d/%m/%Y")
sub <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
subdf <- subset(df, Date %in% sub)