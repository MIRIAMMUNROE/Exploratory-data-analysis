PLOT 2.R
## Read the text file from the zipped folder
> household_power_consumption <- read.csv("~/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')


## Assign variable powerdata to the household power consumption data.

> powerdata <-  household_power_consumption

## Change the date and time formats
> powerdata2$Date <- as.Date(powerdata$Date, format="%d/%m/%Y")
> powerdata2$Time <- format(powerdata$Time, format="%H:%M:%S")

## Combine date and time into one column then cbind 
> dataTime <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

> powerdata2 <- cbind(powerdata, dataTime)

## Change the data on the table for the rest of the variables to be of numeric class. 
> powerdata2$Global_active_power <- as.numeric(powerdata$Global_active_power)
> powerdata2$Global_reactive_power <- as.numeric(powerdata$Global_reactive_power)
> powerdata2$Voltage <- as.numeric(powerdata$Voltage)
> powerdata2$Global_intensity <- as.numeric(powerdata$Global_intensity)
> powerdata2$Sub_metering_1 <- as.numeric(powerdata$Sub_metering_1)
> powerdata2$Sub_metering_2 <- as.numeric(powerdata$Sub_metering_2)
> powerdata2$Sub_metering_3 <- as.numeric(powerdata$Sub_metering_3)
> subsetdata <- subset(powerdata2, Date == "2007-02-01" | Date =="2007-02-02")

## Construct the png file with the required specifications

> png("plot2.png", width=480, height=480)


## Plot 2nd plot with with ()

> with(subsetdata, plot(dataTime, Global_active_power, type="l", xlab="Day", ylab="Global Active Power (kilowatts)"))

## Close the graphic device
> dev.off()
png 
  2 
> dev.off()
null device 
          1 
