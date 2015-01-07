# Exploratory Data Analysis Course Project 1: Plot 2

# Read the data.
source("read.R")

# Set the language for the week day labels on the date axis.
Sys.setlocale(locale="en_US")

# Create the PNG file as required.
png(filename="plot3.png", width = 480, height = 480)

# Plot the metering variables with the given colors.
with(data, plot(DateTime, Sub_metering_1, type="l", col="black",
                xlab="", ylab="Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, col="red"))
with(data, lines(DateTime, Sub_metering_3, col="blue"))

# Add a legend in the top right corner.
legend("topright", lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"))
dev.off()
