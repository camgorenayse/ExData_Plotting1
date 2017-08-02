setwd("~/Desktop/R")
data <- read.table("household_power_consumption.txt", header = TRUE, sep= ";", col.names = c("date", "time", "globalactivepower", "globalreactivepower", "Voltage", "globalintensity", "submetering1", "submetering2", "submetering3"))
subdata <- subset(data, data$date == "1/2/2007"| data$date == "2/2/2007")
hist(as.numeric(as.character(subdata$globalactivepower)), col = "red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")
