source('getData.R')

# Plots in PNG
png(file="plot1.png", width=480, height=480)

# Create hist plot code
hist(hpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)" , ylab="Frequency" )

# Close device graph
dev.off()