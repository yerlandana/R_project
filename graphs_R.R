library(dplyr)
library(lubridate)
dq<-read.csv('C://Users/dyerl/Documents/table.csv', stringsAsFactors = F, encoding = 'UTF-8')
dim(df)
ncol(df)
dq$Date <- mdy(df$Date)
dq$year <- year(df$Date)
dq$month <- month(df$Date)
dq$day <- day(df$Date)
dq$weekday <- weekdays(df$Date)

t.test(dq$Fact..KZT..with.discount.[dq$month ==1 & dq$year == 2017],
       dq$Fact..KZT..with.discount.[dq$month ==1 & dq$year == 2018])

t.test(dq$Fact..KZT..with.discount.[dq$month ==2 & dq$year == 2017],
       dq$Fact..KZT..with.discount.[dq$month ==2 & dq$year == 2018])

t.test(dq$Fact..KZT..with.discount.[dq$month == 8 & dq$year == 2016],
       dq$Fact..KZT..with.discount.[dq$month == 8 & dq$year == 2017])

x<- df %>% select(Fact..KZT..with.discount., month, year)%>%filter(month==3, year ==2017|year==2018)
fligner.test(Fact..KZT..with.discount.~year, data=x)


t.test(dq$Fact..KZT..with.discount.[dq$month ==3 & dq$year == 2017],
       dq$Fact..KZT..with.discount.[dq$month ==3 & dq$year == 2018],
       var.equal=T, paired = T)


x<- df %>% select(Fact..KZT..with.discount., month, year)%>%filter(month==12, year ==2016|year==2017)
fligner.test(Fact..KZT..with.discount.~year, data=x) #dispercy

t.test(dq$Fact..KZT..with.discount.[dq$month ==12 & dq$year == 2016],
       dq$Fact..KZT..with.discount.[dq$month ==12 & dq$year == 2017],
       var.equal=F, paired = T)  #средн€€ продажа

#-------------------------------------------------------------------------------------------------------------------

air<-airquality
lm_fit<-lm(Ozone~Wind, data=air)
lm_fit
plot(air$Wind, air$Ozone)

air$pred<-96.873+-5.551*air$Wind
air$error<-air$Ozone-air$pred
sum(abs(air$error), na.rm = T )/111
summary(lm_fit)

air<- na.omit(air) #remove na from all rows of table 
#cor()<-correlation
lm_fit<-(m(Ozone~Wind+Temp, data=air))
summary(lm_fit)
air$pred_2<--67.3220+3.2948*air$Wind+1.8276*air$Temp
air$error_2<-air$Ozone-air$pred_2

sum(abs(air$error), na.rm = T)/111

lm_fit<-lm(Ozone ~ ., data=air)
summary(lm_fit)



?weekdays
wday(df$Date)[1:6] 

#real plans
#discount