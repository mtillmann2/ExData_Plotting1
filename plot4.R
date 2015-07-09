x <-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings ="?")
y <-subset(x,x$Date == "1/2/2007"| x$Date =="2/2/2007")

png('plot4.png')

par(mfrow= c(2,2))

plot(y$Global_active_power, type = "l",ylab= "Global Active Power (kilowatts)", xlab= "",xaxt='n')
axis(side=1,at= c(1,1441,2881),labels= c("Thu","Fri","Sat"))


plot(y$Voltage, type = "l",ylab= "Voltage", xlab= "",xaxt='n')
axis(side=1,at= c(1,1441,2881),labels= c("Thu","Fri","Sat"))
mtext("datetime",1)


plot(y$Sub_metering_1, type = "l",ylab= "Energy sub metering", xlab= "",xaxt='n')
lines(y$Sub_metering_2,col="red")
lines(y$Sub_metering_3,col="blue")
axis(side=1,at= c(1,1441,2881),labels= c("Thu","Fri","Sat"))
legend("topright",legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch= "-",lwd= 2,col=c("black","red","blue"),inset= .02)


plot(y$Global_reactive_power, type = "l",ylab= "Global_reactive_power", xlab= "",xaxt='n')
axis(side=1,at= c(1,1441,2881),labels= c("Thu","Fri","Sat"))
mtext("datetime",1)

dev.off()