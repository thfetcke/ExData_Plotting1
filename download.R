# Exploratory Data Analysis Course Project 1

# Download the dataset and store it locally.
# Both the zip file and the actual (text) data file are stored in the
# same "download" directory not included in the project.
downloadDir <- "download"
srcUrl <- 
    "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFile <- paste(downloadDir, "household_power_consumption.zip", sep="/")
dataFile <- paste(downloadDir, "household_power_consumption.txt", sep="/")

if (!file.exists(dataFile)) {
    if (!file.exists(downloadDir)) 
        dir.create(downloadDir)
    if (!file.exists(zipFile))
        download.file(srcUrl, zipFile, method="curl", quiet=T)
    unzip(zipFile, exdir = downloadDir)
}
