source('getData.R')

# Plots in PNG
png(file="plot2.png", width=480, height=480)

# Create line plot code
with(hpc, plot(Time, Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l"))

# Close device graph
dev.off()