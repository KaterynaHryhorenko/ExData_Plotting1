rawData <- read.table('household_power_consumption.txt', header = T, stringsAsFactors = F,
                      na.strings = "?", sep = ';', quote = "", skip = 66636, nrows = 2880)

plot(x = rawData$DateTime, y = rawData$GlobalActivePower, 
     type = 'l', xlab = NA, ylab = 'Global Active Power (kilowatts)')