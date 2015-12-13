source('getData.R')

# Plots in PNG
png(file="plot3.png", width=480, height=480)

# Create plots
# Plots lines
with(hpc, {
        plot(Time, Sub_metering_1 , xlab="", ylab="Energy sub metering", col="black", type="l")
        lines(Time, Sub_metering_2 , xlab="", ylab="Energy sub metering", col="red")
        lines(Time, Sub_metering_3 , xlab="", ylab="Energy sub metering", col="blue")
})

# Plots legends
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = rep(1,3),
       col = c("black", "red", "blue")
)

# Close device graph
dev.off()