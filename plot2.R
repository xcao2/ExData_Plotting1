setwd("C:\\Users\\Xin\\Documents\\GitHub\\ExData_Plotting1")

data<-read.table("household_power_consumption.txt", header=TRUE, sep=";")

data1<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]


time <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
power <- as.numeric(data1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(time, power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 