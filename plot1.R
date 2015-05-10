source("loadAndPlot.R")
activePower=dataToPlot$Global_active_power
png(filename="plot1.png",width = 480, height = 480)

hist(activePower, breaks=12, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()