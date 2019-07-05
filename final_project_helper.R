df<-read.csv('C://Users/dyerl/Documents/table.csv', stringsAsFactors = F, encoding = 'UTF-8')
m<-sapply(df, function(x)sum(is.na(x)))
m
df$Date <- mdy(df$Date)
df$year <- year(df$Date)
df$month <- month(df$Date)
df$day <- day(df$Date)
df$weekday <- weekdays(df$Date)
