source("PlotFile.R")

if(!exists("PlotFile"))
  PlotFile <- PrepData()

png("Plot4.png", width=400, height=400)

par(mfrow=c(2,2), mar = c(4,4,2,1),oma= c(1,1,2,0))

with(PlotFile, {
  # Top Left
  plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power")
  # Top Right
  plot(Time, Voltage, type="l", xlab="datetime", ylab="Voltage")
  # Bottom Left
  plot(Time, Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(Time, Sub_metering_2, col="red")
  lines(Time, Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)
  # Bottom Richt
  plot(Time, Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
  lines(Time, Global_reactive_power)
  mtext("Plot 4", adj = 0 ,outer = TRUE, col = "Black",cex = 2)
})


dev.off()
