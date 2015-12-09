source("PlotFile.R")

if(!exists("PlotFile"))
  PlotFile <- PrepData()

png("Plot3.png", width=400, height=400)

par(mar = c(4,4,2,1),oma= c(1,1,2,0))
with(PlotFile, {
  plot(Time, Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(Time, Sub_metering_2, col="red")
  lines(Time, Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)
  mtext("Plot 3", adj = 0 ,outer = TRUE, col = "Black",cex = 2)
})

dev.off()

