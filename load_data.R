


setwd("/Users/rs186089/coursera/exploratory/ExData_Plotting1")
library(httr) 

dataSource <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFolder <- "data"
if(!file.exists(dataFolder)){
	dir.create(dataFolder)
} 
charts <- "charts"
if(!file.exists(charts)){
	dir.create(charts)
}
archiveFile <- paste(getwd(), "/data/household_power_consumption.zip", sep = "")
if(!file.exists(archiveFile)){
	download.file(dataSource, archiveFile, method="curl", mode="wb")
}
textFile <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")
if(!file.exists(textFile)){
	unzip(archiveFile, list = FALSE, overwrite = FALSE, exdir = dataFolder)
}

summaryData <- paste(getwd(), "/data/summaryData.rds", sep = "")
if(!file.exists(summaryData)){
	data <- "data/household_power_consumption.txt"
	data <- read.table(data, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
	data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
	data$Date <- as.Date(data$Date, "%d/%m/%Y")
	fechas <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
	data <- subset(data, Date %in% fechas)
	summaryData <- paste(getwd(), "/", "data", "/", "summaryData", ".rds", sep="")
	saveRDS(data, summaryData)
} else {
	data <- "data/summaryData.rds"
	data <- readRDS(data)
}
