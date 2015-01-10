setwd("C:\\Users\\Eslam\\Desktop")
fileName = "project1.txt"
data <- read.table(fileName, header = TRUE, sep = ";", na.strings = "?")
sub = subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot4.png")
par (mfrow = c(2, 2))

##Drawing the Global Active Power plot
plot(sub$Global_active_power, col = 'white', ylab = "Global Active Power (kilowatts)",
     xlab = NA, xaxt = "n")
axis(1, at = c(1, 2, 3), labels = c('Thu', 'Fri', 'Sat'))
lines(sub$Global_active_power)

##Drawing the Voltage plot
plot(sub$Voltage, col = 'white', ylab = "Voltage",
     xlab = "datetime", xaxt = "n")
axis(1, at = c(1, 2, 3), labels = c('Thu', 'Fri', 'Sat'))
lines(sub$Voltage)

##Drawing the Energy sub metering  plot
plot(sub$Sub_metering_1, col = 'white', ylab = "Energy sub metering",
     xlab = NA, xaxt = "n")
lines(sub$Sub_metering_1)
lines(sub$Sub_metering_2, col = 'red')
lines(sub$Sub_metering_3, col = 'blue')
axis(1, at = c(1, 2, 3), labels = c('Thu', 'Fri', 'Sat'))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

##Drawing the Global Reactive Power plot
plot(sub$Global_reactive_power, col = 'white', ylab = "Global_reactive_power",
     xlab = "datetime", xaxt = "n")
axis(1, at = c(1, 2, 3), labels = c('Thu', 'Fri', 'Sat'))
lines(sub$Global_reactive_power)

dev.off()