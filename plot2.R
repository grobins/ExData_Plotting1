# Load data
source('loadPowerData.R')

# Open png device
png(filename = 'plot2.png', width = 480, height = 480, units = 'px')

# Make plot
plot(df$DateTime, df$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()