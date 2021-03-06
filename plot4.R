# Exploratory Data Analysis Course Project 1: Plot 4

# Read the data.
source("read.R")

# Set the language for the week day labels on the date axis.
Sys.setlocale(locale="en_US")

# Create the PNG file as required.
png(filename="plot4.png", width = 480, height = 480)

# Create four plots in two rows.
par(mfrow=c(2, 2))

# Add the four plots. The two on the left are Plots 3 and 3 with minor
# modifications. The other two are simple line plots of two more variables from 
# the data set.
with(data, {
     plot(DateTime, Global_active_power, type="l",
                xlab="", ylab="Global Active Power")
     plot(DateTime, Voltage, type="l", xlab="datetime")
     plot(DateTime, Sub_metering_1, type="l", col="black",
          xlab="", ylab="Energy sub metering")
     lines(DateTime, Sub_metering_2, col="red")
     lines(DateTime, Sub_metering_3, col="blue")
     legend("topright", lty=1, bty="n",
            legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
            col=c("black", "red", "blue"))
     plot(DateTime, Global_reactive_power, type="l", xlab="datetime")
})
dev.off()
