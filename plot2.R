# Set Working directory
setwd("~/Documents/DataSc/4. Exploring Data")
# Extract Data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Select the subset
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
# Put GlobalActive power as numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)
# Open png device
png("plot2.png", width=480, height=480)
# Perform histogram
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# close Device
dev.off()


