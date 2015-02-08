#setwd("/Users//galiya/Projects//datasciencecoursera/exdata-011/CourseProject1/")


mydata <- read.table("./data/household_power_consumption.txt", sep=";", skip = 66637, nrows = 2880, na.strings = "?", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dateTime<- as.POSIXlt(paste(as.Date(mydata$Date, format="%d/%m/%Y"), mydata$Time, sep=" "))

png(file = "Plot3.png", bg = "white", width = 480, height = 480)

plot(dateTime, mydata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dateTime, mydata$Sub_metering_2, type="l", col = "red")
lines(dateTime, mydata$Sub_metering_3, type="l", col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 0.75, cex = 0.75)

dev.off()