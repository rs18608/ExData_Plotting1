setwd("/Users/rs186089/coursera/exploratory/ExData_Plotting1")

source("load_data.R")

plot2 <- paste(getwd(), "/charts/plot2.png", sep = "")
if(!file.exists(plot2)) {
	png("charts/plot2.png", width = 480, height = 480)
	plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	dev.off()
} else {
	plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}
