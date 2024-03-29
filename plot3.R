## Reading the data
Data <- read.csv("C:/Users/Pritish Puhan/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
## Subsetting as per requirement
Subset <- subset(Data, Data$Date =="1/2/2007" | Data$Date == "2/2/2007")
## str(Subset)
datetime <- strptime(paste(Subset$Date, Subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(Subset$Global_active_power)
subMetering1 <- as.numeric(Subset$Sub_metering_1)
subMetering2 <- as.numeric(Subset$Sub_metering_2)
subMetering3 <- as.numeric(Subset$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
