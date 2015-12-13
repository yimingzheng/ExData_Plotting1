# Download data
zipFileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFileName <- "exdata-data-household_power_consumption.zip"
txtFileName <- "household_power_consumption.txt"
if(!file.exists(zipFileName)){
        download.file(zipFileUrl, zipFileName, method="curl")
}

# Read data
# hpc: household power consumption
hpc <- read.table(unz(zipFileName, txtFileName), header=TRUE, sep=";", colClasses=c(rep("character",2),rep("numeric",7)), na.strings = "?")
hpc <- hpc[grepl("^[12]/2/2007",hpc$Date),]

# Format dates
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
hpc$Time <- strptime(paste(hpc$Date,hpc$Time), "%Y-%m-%d %H:%M:%S")