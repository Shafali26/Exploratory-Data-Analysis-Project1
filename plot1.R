# Loading and subsetting the data from dataset

RawFile <- "./data/exdata_2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt"
data<- read.table(RawFile,header = TRUE, sep=";" , stringsAsFactors = FALSE, dec=".")

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)

#Calling plotting function
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
