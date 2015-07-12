#Read data file
data<-read.table("household_power_consumption.txt",header = TRUE, sep=";")
names(data)

#Subset to dates of interest
householdconsumption<-as.data.frame(data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),])

#Set variables of interest
SM1<-as.numeric(as.character(householdconsumption$Sub_metering_1))
SM2<-as.numeric(as.character(householdconsumption$Sub_metering_2))
SM3<-as.numeric(as.character(householdconsumption$Sub_metering_3))
datetime<-as.POSIXct(paste(householdconsumption$Date, householdconsumption$Time), format="%d/%m/%Y %H:%M:%S")

#Plot multiple lines and include legend
plot(datetime,SM1,type="n",ylab="Energy sub metering",xlab=" ")
lines(datetime,SM1)
lines(datetime,SM2,col="red")
lines(datetime,SM3,col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3") ,lty=1, col=c('red', 'blue', 'green',' brown'))
