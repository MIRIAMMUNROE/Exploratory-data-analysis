PLOT 4.R

## Use the 2 day data subset 
> subsetdata <- subset(powerdata2, Date == "2007-02-01" | Date =="2007-02-02")

## Plot the 4 plots 

> png("plot4.png", width=480, height=480)


> par(mfrow=c(2,2))
> with(subsetdata, plot(dataTime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))
> with(subsetdata, plot(dataTime, Voltage, type = "l", xlab="datetime", ylab="Voltage"))
> with(subsetdata, plot(dataTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
> lines(subsetdata$dataTime, subsetdata$Sub_metering_2,type="l", col= "red")
> lines(subsetdata$dataTime, subsetdata$Sub_metering_3,type="l", col= "blue")
> legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))
> with(subsetdata, plot(dataTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))


## Close the graphic device

> dev.off()
null device 
          1 
