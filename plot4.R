setwd("C:\\Users\\caox\\Documents\\github\\explotory analysis")
data<-read.table("household_power_consumption.txt", header=T, sep=";")
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
power <- as.numeric(data1$Global_active_power)
power1 <- as.numeric(data1$Global_reactive_power)
voltage <- as.numeric(data1$Voltage)

m1 <- as.numeric(data1$Sub_metering_1)
m2 <- as.numeric(data1$Sub_metering_2)
m3 <- as.numeric(data1$Sub_metering_3)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(time, power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(time, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(time, m1, type="l", ylab="Energy Submetering", xlab="")
lines(time, m2, type="l", col="red")
lines(time, m3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(time, power1, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off() 