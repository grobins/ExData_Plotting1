
library(lubridate)

# If the raw data has not been saved, download, unzip, and load it.
# Save it to an .rds file for easy access later.
if (!file.exists('powerData.rds')) {
  download.file(paste0('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'),
                method='libcurl', destfile='raw-power-data.zip')
  unzip('raw-power-data.zip')
  
  # Read data into a table with appropriate classes
  df <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?',
                         colClasses=c(rep('character', 2), rep('numeric', 7)))
  
  df$DateTime <- strptime(paste0(df$Date, ' ', df$Time), format = '%d/%m/%Y %H:%M:%S')
  
  df <- subset(df, Date == '1/2/2007' | Date == '2/2/2007')
  
  # Save file
  saveRDS(df, file='powerData.rds')
} else {
  df <- readRDS('powerData.rds')
}
