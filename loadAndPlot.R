Sys.setlocale("LC_ALL", "C")
theData<-read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE,header = TRUE)
theData$Time = as.ts(theData$Time)
theData$Global_active_power= as.numeric(theData$Global_active_power)
theData$Global_reactive_power= as.numeric(theData$Global_reactive_power)
theData$DateToUse=as.Date(theData$Date)


dataToPlot<-theData[theData$Date=="1/2/2007" | theData$Date=="2/2/2007",]
#dates take alot of time to convert, so im converting only on the part I need to plot
dataToPlot$FullTime= as.POSIXct(paste(dataToPlot$Date, dataToPlot$Time), format="%d/%m/%Y %H:%M:%S")