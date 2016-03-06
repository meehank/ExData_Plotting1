# plot4.R fulfills the fourth of four requirements for the Week 1 project for
# the Coursera course "Exploratory Data Analysis"
power <- read.table("../ExploreWeek1ProjectData/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
data <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")
remove(power)        #save memory
datetime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(data$Global_active_power)
png("plot4.png", width=480, height=480)
par(mfcol=c(2,2))     #break plotting region into a 2x2 space, fill column 1 first
plot(datetime, gap, ylab="Global Active Power (kilowatts)", xlab="", type="l")
plot(datetime, data$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")
plot(datetime, data$Voltage, type="l", ylab="Voltage")
plot(datetime, data$Global_reactive_power, type="l", ylab="Global_reactive_power")
dev.off()