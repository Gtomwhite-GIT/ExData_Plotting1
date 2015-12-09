source("PlotFile.R")

if(!exists("PlotFile"))
  PlotFile <- PrepData()

png("Plot2.png", width=400, height=400)

par(mar = c(4,4,2,1),oma= c(1,1,2,0))
with(PlotFile, {
  plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  mtext("Plot 2", adj = 0 ,outer = TRUE, col = "Black",cex = 2)
})

dev.off()