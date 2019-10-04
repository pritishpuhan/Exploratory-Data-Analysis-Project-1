## Reading the data
Data <- read.csv("C:/Users/Pritish Puhan/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
## Subsetting as per requirement
Subset <- subset(Data, Data$Date =="1/2/2007" | Data$Date == "2/2/2007")
## Plotting the histogram
hist(as.numeric(as.character(Subset$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
## Downloading the plot as PNG  
dev.copy(png, file = "Plot1.png", width = 480, height = 480)
dev.off()
