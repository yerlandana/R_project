dt<- read.csv('C://Users/dyerl/Desktop/houseprice.csv', stringsAsFactors = F)
table(dt$MSZoning)
library(dplyr)
dt%>%group_by(MSZoning)%>%summarize(mean=mean(SalePrice))

options(scipen=10000)

library(ggplot)
ggplot(data=dt, aes(SalePrice, fill=YearType))+
  geom_histogram(bins = 30)+
  facet_grid(MSZoning~.)+
  ylab('SalePrice')+
   xlab('home')+
  ggtitle('Цена/Дом')

m<-sapply(dt, function(x)sum(is.na(x)))
dt$LotFrontage[is.na(dt$LotFrontage)] <- 0

ggplot(data = dt, aes(SalePrice, LotFrontage, fill=YearType))+
  geom_point()+ 
  ylab('Фасад')+
  xlab('Цена')+
  ggtitle('Цена/Фасад')+
  geom_smooth(method='lm')

dt <- dt %>% 
  mutate(YearType = ifelse(YearBuilt <= 1960, 'Very Old', ifelse(YearBuilt >= 2000, 'New', 'Old')))

ggplot(data=dt %>%filter(SalePrice<500000, LotArea<30000), aes( SalePrice,LotArea, color=YearType))+
  geom_point()+
  facet_grid(YearType~.)

dt <- dt %>% 
  mutate(Quality = ifelse(OverallQual <= 4, 4, ifelse(OverallQual <= 8, 8, OverallQual)))
dtm<-dt%>%
  group_by(Quality)%>%
  summarize(meanRice=mean(SalePrice))

ggplot(data=dtm,aes(Quality,meanRice)) + 
  geom_bar(stat='identity') 

dtc<- dt%>% group_by(OverallCond)%>%
  summarize(meanPrice=mean(SalePrice))
ggplot(data = dtc, aes(OverallCond, meanPrice))+
  geom_bar(stat = 'identity')



