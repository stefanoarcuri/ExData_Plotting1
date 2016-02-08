setwd="./ExData_Plotting1"
nome_File <- "household_power_consumption.txt"
data <- read.table(nome_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSD <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(SubSD$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMetering_1_num <- as.numeric(SubSD$Sub_metering_1)
subMetering_2_num <- as.numeric(SubSD$Sub_metering_2)
subMetering_3_num <- as.numeric(SubSD$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, subMetering_1_num, type="l", ylab="Energy Submetering", xlab="")
lines(datetime,subMetering_2_num, type="l", col="red")
lines(datetime, subMetering_3_num, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()