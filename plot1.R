x <-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings ="?")


y <-subset(x,x$Date == "1/2/2007"| x$Date =="2/2/2007")

hist(y$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main ="Global Active Power")

dev.copy(png,'plot1.png')
dev.off()