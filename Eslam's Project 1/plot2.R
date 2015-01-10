setwd("C:\\Users\\Eslam\\Desktop")
fileName = "project1.txt"
data <- read.table(fileName, header = TRUE, sep = ";", na.strings = "?")
sub = subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot2.png")
plot(sub$Global_active_power, col = 'white', ylab = "Global Active Power (kilowatts)",
     xlab = NA, xaxt = "n")
axis(1, at = c(1, 2, 3), labels = c('Thu', 'Fri', 'Sat'))
lines(sub$Global_active_power)
dev.off()