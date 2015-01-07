# Exploratory Data Analysis Course Project 1: Plot 1

# Read the data.
source("read.R")

# Create the PNG file as required.
png(filename="plot1.png", width = 480, height = 480)

# Plot a line with the given axis labels.
with(data, hist(Global_active_power, col="red",
                main="Global Active Power",
                xlab="Global Active Power (kilowatts)"))
dev.off()
