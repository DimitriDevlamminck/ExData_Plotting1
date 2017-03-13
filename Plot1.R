# Set Working directory
setwd("~/Documents/DataSc/4. Exploring Data")
# Extract Data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
# Select Jan - Feb data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
# Put GlobalActive power as numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)
# Open png device
png("plot1.png", width=480, height=480)
# Perform histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# close device
dev.off()
