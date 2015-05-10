source("loadAndPlot.R")
activePower=dataToPlot$Global_active_power
png(filename="plot4.png",width = 480, height = 480)

par(mfrow = c(2,2))
plot(dataToPlot$FullTime,dataToPlot$Global_active_power,type="l",xlab = "",ylab = "Global Active Power(kilowatts)")
plot(dataToPlot$FullTime,dataToPlot$Voltage,type="l",xlab = "datetime",ylab = "Voltage")

plot(dataToPlot$FullTime,dataToPlot$Sub_metering_1,type="l",xlab = "",ylab = "Energy sub metering")
lines(dataToPlot$FullTime,dataToPlot$Sub_metering_2,col = "red")
lines(dataToPlot$FullTime,dataToPlot$Sub_metering_3,col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","blue","red"),lty = c(1,1,1),bty="n")

plot(dataToPlot$FullTime,dataToPlot$Global_reactive_power,type="l",xlab = "datetime",ylab = "Global_reactive_power" )
dev.off()