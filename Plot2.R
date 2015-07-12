#Read data file
data<-read.table("household_power_consumption.txt",header = TRUE, sep=";")
names(data)

#Subset to dates of interest
householdconsumption<-as.data.frame(data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),])

#Set variables of interest
GAP<-as.numeric(as.character(householdconsumption$Global_active_power))
datetime<-as.POSIXct(paste(householdconsumption$Date, householdconsumption$Time), format="%d/%m/%Y %H:%M:%S")

#Plot line graph
plot(datetime,GAP,type="n",xlab=" ",ylab="Global Active Power (kilowatts)")
lines(datetime,GAP)
