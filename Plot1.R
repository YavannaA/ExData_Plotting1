#Read data file
data<-read.table("household_power_consumption.txt",header = TRUE, sep=";")
names(data)

#Subset to dates of interest
householdconsumption<-as.data.frame(data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),])

#Set variables of interest
GAP<-as.numeric(as.character(householdconsumption$Global_active_power))

#Plot histogram
hist(GAP,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")


