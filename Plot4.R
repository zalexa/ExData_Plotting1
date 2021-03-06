data<-read.delim("C:/Users/Alex/Downloads/r_programming_data/household_power_consumption.txt", header=TRUE,sep=";", na.strings="?")
mydata2<-subset(data, Date=='2/2/2007')
mydata1<-subset(data,Date=='1/2/2007')
rmydata<-rbind(mydata1, mydata2)
as.date.data<-as.Date(data$Date, format="%d/%m/%Y")
rmydata$DateTime <- as.POSIXct(paste(rmydata$Date, rmydata$Time), format="%d/%m/%Y %H:%M:%S") 
par(mfrow=c(2,2)) 
plot(rmydata$DateTime, rmydata$Global_active_power, type="l", ylab="Global active power (kilowatts)", xlab="")
plot(rmydata$DateTime, rmydata$Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(rmydata$DateTime, rmydata$Sub_metering_1, type="l",ylab="Energy sub metering", xlab="")
points(rmydata$DateTime, rmydata$Sub_metering_2, type="l", col="red")
points(rmydata$DateTime, rmydata$Sub_metering_3, type="l", col="blue" )
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(2.5,2.5, 2.5),col=c("black","blue","red"))
plot(rmydata$DateTime, rmydata$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

png(filename = "Plot4.png",width = 480, height = 480, units = "px")
par(mfrow=c(2,2)) 
plot(rmydata$DateTime, rmydata$Global_active_power, type="l", ylab="Global active power (kilowatts)", xlab="")
plot(rmydata$DateTime, rmydata$Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(rmydata$DateTime, rmydata$Sub_metering_1, type="l",ylab="Energy sub metering", xlab="")
points(rmydata$DateTime, rmydata$Sub_metering_2, type="l", col="red")
points(rmydata$DateTime, rmydata$Sub_metering_3, type="l", col="blue" )
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(2.5,2.5, 2.5),col=c("black","blue","red"))
plot(rmydata$DateTime, rmydata$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()