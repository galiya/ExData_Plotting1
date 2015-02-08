#setwd("/Users//galiya/Projects//datasciencecoursera/exdata-011/CourseProject1/")


mydata <- read.table("./data/household_power_consumption.txt", sep=";", skip = 66637, nrows = 2880, na.strings = "?", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png(file = "Plot1.png", bg = "white", width = 480, height = 480)

hist(mydata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global active power (kilowatts)")

dev.off()