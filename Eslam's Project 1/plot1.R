setwd("C:\\Users\\Eslam\\Desktop")
fileName = "project1.txt"
data <- read.table(fileName, header = TRUE, sep = ";", na.strings = "?")
sub = subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot1.png")
hist(sub$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()