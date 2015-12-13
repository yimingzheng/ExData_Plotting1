source('getData.R')

# Plots in PNG
png(file="plot4.png", width=480, height=480)

# Create plots
# Partition
par(mfrow=c(2,2),mar=c(6,6,2,1))
with(hpc, {
        # Plot 1
        with(hpc, plot(Time, Global_active_power, xlab="", ylab="Global Active Power", type="l"))
        # Plot 2
        with(hpc, plot(Time, Voltage, xlab="datetime", ylab="Voltage", type="l"))
        # Plot 3
        with(hpc, {
                plot(Time, Sub_metering_1 , xlab="", ylab="Energy sub metering", col="black", type="l")
                lines(Time, Sub_metering_2 , xlab="", ylab="Energy sub metering", col="red")
                lines(Time, Sub_metering_3 , xlab="", ylab="Energy sub metering", col="blue")
        })
        legend("topright",
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               lty = rep(1,3),
               col = c("black", "red", "blue")
        )
        # Plot 4
        with(hpc, plot(Time, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l"))
        
})

# Close device graph
dev.off()