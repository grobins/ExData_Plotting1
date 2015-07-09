# Load data
source('loadPowerData.R')

# Open png device
png(filename = 'plot1.png', width = 480, height = 480, units = 'px')

# Make plot
hist(df$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Turn off device
dev.off()





