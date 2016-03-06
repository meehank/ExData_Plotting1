# plot3.R fulfills the third of four requirements for the Week 1 project for
# the Coursera course "Exploratory Data Analysis"
power <- read.table("../ExploreWeek1ProjectData/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
data <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")
remove(power)        #save memory
datetime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(datetime, data$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()