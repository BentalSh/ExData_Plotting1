source("loadAndPlot.R")
activePower=dataToPlot$Global_active_power
png(filename="plot2.png",width = 480, height = 480)

plot(dataToPlot$FullTime,dataToPlot$Global_active_power,type="l",xlab = "",ylab = "Global Active Power(kilowatts)")

dev.off()