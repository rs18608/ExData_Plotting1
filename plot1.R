setwd("/Users/rs186089/coursera/exploratory/ExData_Plotting1")

source("load_data.R")

plot1 <- paste(getwd(), "/charts/plot1.png", sep = "")
if(!file.exists(plot1)) {
	png("charts/plot1.png", width = 480, height = 480)
	hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
	dev.off()
} else {
	hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}
