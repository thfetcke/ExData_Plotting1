# Exploratory Data Analysis Course Project 1: Plot 2

# Read the data.
source("read.R")

# Set the language for the week day labels on the date axis.
Sys.setlocale(locale="en_US")

# Create the PNG file as required.
png(filename="plot2.png", width = 480, height = 480)

# Plot a line with the given axis labels.
with(data, plot(DateTime, Global_active_power, type="l",
                xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
