setwd("C:\\Users\\caox\\Documents\\github\\explotory analysis")
data<-read.table("household_power_consumption.txt", header=T, sep=";")
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
power <- as.numeric(data1$Global_active_power)

m1 <- as.numeric(data1$Sub_metering_1)
m2 <- as.numeric(data1$Sub_metering_2)
m3 <- as.numeric(data1$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(time, m1, type="l", ylab="Energy Submetering", xlab="")
lines(time, m2, type="l", col="red")
lines(time, m3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 