setwd("C:\\Users\\Xin\\Documents\\GitHub\\ExData_Plotting1")

data<-read.table("household_power_consumption.txt", header=TRUE, sep=";")

data1<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

power <- as.numeric(data1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 