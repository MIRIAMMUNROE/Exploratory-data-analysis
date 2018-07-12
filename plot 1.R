PLOT1.R
## Read the text file from the zipped folder
> household_power_consumption <- read.csv("~/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')


## Assign variable powerdata to the household power consumption data.

> powerdata <-  household_power_consumption

## Change the date and time formats

> powerdata$Date <- as.Date(powerdata$Date, format="%d/%m/%Y")
> powerdata$Time <- format(powerdata$Time, format="%H:%M:%S")

## Change the data on the table for the rest of the variables to be of numeric class. 

> powerdata$Global_active_power <- as.numeric(powerdata$Global_active_power)
> powerdata$Global_reactive_power <- as.numeric(powerdata$Global_reactive_power)
> powerdata$Voltage <- as.numeric(powerdata$Voltage)
> powerdata$Global_intensity <- as.numeric(powerdata$Global_intensity)
> powerdata$Sub_metering_1 <- as.numeric(powerdata$Sub_metering_1)
> powerdata$Sub_metering_2 <- as.numeric(powerdata$Sub_metering_2)
> powerdata$Sub_metering_3 <- as.numeric(powerdata$Sub_metering_3)

## Create the subset of data for the two days we will create the plots for, from the powerdata set.

> subsetdata <- subset(powerdata, Date == "2007-02-01" | Date =="2007-02-02")
> str(subsetdata)

## Construct the png file with the required specifications
> png("plot1.png", width=480, height=480)

## Call hist() for the 1st plot

> hist(subsetdata$Global_active_power, col = "red", border = "black", main = "Global Active Power", xlab = "Global Active Power(kilowatts)", ylab = "Frequency")

## Close the graphic device
> dev.off()
null device 
          1
