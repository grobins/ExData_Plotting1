data <- read.table(unz("exdata-data-household_power_consumption.zip", "Sales.dat"), nrows=10, header=T, quote="\"", sep=",")



setwd("~/DATA/coursera/Data Science Specialisation/Exploratory Data Analysis/assessment1")

data <- read.table('household_power_consumption.txt', sep=';', header=T)
data[ data == "?" ] = NA
data$DateTime <- strptime(paste0(data$Date, ' ', data$Time), format = '%d/%m/%Y %H:%M:%S')

df <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
df <- as.data.frame(sapply(data, as.numeric ))


png(filename = 'plot1.png', width = 480, height = 480, units = 'px')

# plot 1
hist(as.numeric(df$Global_active_power))



# plot 2
plot(x = df$DateTime, y = as.numeric(df$Global_active_power), type='l')




# plot 3
ymax <- max(df[, c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')])
plot(NULL,ymax = ymax)
lines(x=DateTime, y=df$Sub_metering_1)


