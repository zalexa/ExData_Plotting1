data<-read.delim("C:/Users/Alex/Downloads/r_programming_data/household_power_consumption.txt", header=TRUE,sep=";", na.strings="?")
mydata2<-subset(data, Date=='2/2/2007')
mydata1<-subset(data,Date=='1/2/2007')
rmydata<-rbind(mydata1, mydata2)
as.date.data<-as.Date(data$Date, format="%d/%m/%Y")
rmydata$DateTime <- as.POSIXct(paste(rmydata$Date, rmydata$Time), format="%d/%m/%Y %H:%M:%S") 
plot(rmydata$DateTime, rmydata$Global_active_power, type="l", ylab="Global active power (kilowatts)", xlab="")

png(filename = "Plot2.png",width = 480, height = 480, units = "px")
plot(rmydata$DateTime, rmydata$Global_active_power, type="l", ylab="Global active power (kilowatts)", xlab="")
dev.off()