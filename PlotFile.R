#Creates the file to be used for plotting data

PrepData <- function() {
  # Project 1 Exploratory Data Analysis - May add variables to this function for future use
  # filename, ProcessDates, colClasses, nrows could be possible variables
  filename <- "household_power_consumption.txt"
  ProcessDates <- c("2007-02-01", "2007-02-02")
  AllRows <- read.table(filename, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?", nrows=2100000)
  AllRows$Time <- strptime(paste(AllRows$Date, AllRows$Time), "%d/%m/%Y %H:%M:%S")
  AllRows$Date <- as.Date(AllRows$Date, "%d/%m/%Y")
  # Use data from the dates 2007-02-01 and 2007-02-02
  dates <- as.Date(ProcessDates, "%Y-%m-%d")
  PlotFile <- subset(AllRows, Date %in% dates)
  # Clean up memory from used for Fulle Fileset
  rm(AllRows)
  return(PlotFile)
}