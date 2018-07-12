PLOT 3.R
## Use the 2 day data subset 
> subsetdata <- subset(powerdata2, Date == "2007-02-01" | Date =="2007-02-02")

## Construct the 3rd plot 
> png("plot3.png", width=480, height=480)

> with(subsetdata, plot(dataTime, Sub_metering_1, type="l", xlab="Day", ylab="Energy sub metering"))

## Add annotations on the plot for line and legend specifications

> lines(subsetdata$dataTime, subsetdata$Sub_metering_2,type="l", col= "red")
> lines(subsetdata$dataTime, subsetdata$Sub_metering_3,type="l", col= "blue")
> legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))

## Close the graphic device

> dev.off()
null device 
          1 
