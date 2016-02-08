nome_File <- "household_power_consumption.txt"
data <- read.table(nome_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSD <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalActivePower <- as.numeric(SubSD$Global_active_power)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off