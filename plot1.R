# plot1.R fulfills the first of four requirements for the Week 1 project for
# the Coursera course "Exploratory Data Analysis"
power <- read.table("../ExploreWeek1ProjectData/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
data <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")
remove(power)        #save memory
gap <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, breaks=12, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()