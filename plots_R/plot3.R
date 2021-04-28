rawData <- read.table('household_power_consumption.txt', header = T, stringsAsFactors = F,
                      na.strings = "?", sep = ';', quote = "", skip = 66636, nrows = 2880)
plot(x = rawData$DateTime, y = rawData$SubMetering1, type = 'l',
     xlab = NA, ylab = 'Energy sub metering')
lines(x = rawData$DateTime, y = rawData$SubMetering2, col = 'red')
lines(x = rawData$DateTime, y = rawData$SubMetering3, col = 'blue')
legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lwd = 1)