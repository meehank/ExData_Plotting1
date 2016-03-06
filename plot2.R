# plot2.R fulfills the second of four requirements for the Week 1 project for
# the Coursera course "Exploratory Data Analysis"
power <- read.table("../ExploreWeek1ProjectData/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
data <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")[,1:3]
remove(power)        #save memory
datetime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gap, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()