source("PlotFile.R")

if(!exists("PlotFile"))
    PlotFile <- PrepData()

png("Plot1.png", width=400, height=400)

par(mar = c(4,4,2,1),oma= c(1,1,2,0))
with(PlotFile, {
  hist(Global_active_power,main = "Global Active Power",col = "Red", xlab = "Global Active Power (kilowatts)")
  mtext("Plot 1", adj = 0.1 ,outer = TRUE, col = "Black",cex = 2)
})


dev.off()
