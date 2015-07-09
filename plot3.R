# Load data
source('loadPowerData.R')

# Open png device
png(filename = 'plot3.png', width = 480, height = 480, units = 'px',bg = "transparent")

# Make plot
plot(df$DateTime, df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(df$DateTime, df$Sub_metering_2, col='red')
lines(df$DateTime, df$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

# Turn off device
dev.off()