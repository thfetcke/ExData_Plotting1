# Exploratory Data Analysis Course Project 1

# Download and unpack the dataset file.
source("download.R")

# Read the dataset. 
# Since we are only interested in the first two days of February 2007,
# we simply read the first 70,000 rows which is quite sufficient.
library(dplyr)
library(lubridate)
data <- read.csv(dataFile, sep=";", na.strings="?", stringsAsFactors=F,
                 nrows=70000)
data <- tbl_df(data)
data <- data %>%
    mutate(DateTime=parse_date_time(paste(Date, Time), orders="dmyhms")) %>%
    filter(DateTime>=ymd("2007-02-01") & DateTime<ymd("2007-02-03")) %>%
    select(DateTime, 3:9)
