x <-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings ="?")
y <-subset(x,x$Date == "1/2/2007"| x$Date =="2/2/2007")

plot(y$Global_active_power, type = "l",ylab= "Global Active Power (kilowatts)", xlab= "",xaxt='n')
axis(side=1,at= c(1,1441,2881),labels= c("Thu","Fri","Sat"))

dev.copy(png,'plot2.png')
dev.off()