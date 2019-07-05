# Basic plot in R

# Для чего мы визуализируем данные
# 1. Понять свойства данных
# 2. Найти закономерности
# 3. Презентовать результаты анализа

# Способы строить графики
# 1. Базовый способ
# 2. ggplot2
# 3. Lattice - построить плот одной функцией

# Типы графиков
# 1. Общая информация (summary())
# 2. Boxplot - ящик с усами
# 3. Гистограмма
# 4. Density plot
# 5. Barplot

# Общая информация
titanic <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', stringsAsFactors = F)
air <- airquality
summary(air$Wind)

# Вспомнить проколичственные переменные и качественные

# Гистограмма - для количественных
hist(titanic$Age, col = 'blue')
rug(titanic$Age)
hist(titanic$Age, col = 'pink', breaks = 50)
rug(titanic$Age)

hist(titanic$Age, col = 'green', breaks = 50)
abline(v = 18, lwd = 2)
abline(v = mean(titanic$Age, na.rm = TRUE), col = 'magenta', lwd = 4)
abline(v= max(titanic$Age, na.rm =TRUE), col = 'orange', lwd = 6)

# Barplot - для качественных
table(titanic$Sex)
barplot(table(titanic$Sex), col = 'red', main = 'Gender popularity')

# Задание:
# 1. Помимо колонки Age в датафрейме titanic имеет смысл построить гистограмму только по еще одной колонке. По какой?
#FARE
# 2. Постройте гистограмму по колонке из первого вопроса. Покрасьте ее в синий цвет и установите аргумент breaks равный 40. Что вы можете сказать по получившемуся графику?
hist(titanic$Fare , col = 'blue', breaks = 40)
# 3. Удалите выбросы. Загрузите библиотеку dplyr, и с помощью функции filter оставьте только строки, в которых значение Fare ниже 300
library(dplyr)
fare <- titanic%>%filter(Fare<200)
# 4. Постройте гистограмму еще раз с теми же параметрами
hist(fare$Fare , col = 'blue', breaks = 40)
# 5. Постройте bar-plot по колонке Embarked
barplot(table(titanic$Embarked), col = 'pink', main="Embarked")
table(titanic$Embarked)
# 2 dimensions plots
# 1. Multi 1D plots
# 2. Диаграмма рассеивания
# 3. 3-D plots

df <- read.csv('Documents/Study/Method/Lectures/5 weeks/Data/table.csv', stringsAsFactors = F)
library(lubridate)
df$Date <- mdy(df$Date)
df$month <- month(df$Date)

tmp <- df %>%
  group_by(month) %>%
  summarise(mean = mean(Fact..KZT..with.discount.))
plot(tmp$mean)
plot(tmp$mean, type="o", col="blue", pch=22, lty=2)



par(mfrow = c(2,1), mar = c(4,4,2,1))
library(dplyr)
hist1 <- titanic %>% filter(Sex == 'male')
hist(hist1$Age, col = 'green', breaks = 20)
abline(v = 18)

hist2 <- titanic %>% filter(Sex == 'female')
hist(hist2$Age, col = 'green', breaks = 20)
abline(v = 18)

hist1 <- titanic %>% filter(Sex == 'male')
hist(hist1$Age, col = 'green', breaks = 20)
abline(v = 18, lwd = 3, lty = 3)

hist2 <- titanic %>% filter(Sex == 'female')
hist(hist2$Age, col = 'green', breaks = 20)
abline(v = 18, lwd = 2, lty = 2)

# Рассеивание
dev.off()
plot(titanic$Fare, titanic$Age, col = 'blue')
# Мешают выбросы. Избавимся от них.
scatter <- titanic %>% filter(Fare < 200)
plot(scatter$Fare, scatter$Age, col = 'blue')

scatter$Sex <- as.factor(scatter$Sex)
plot(scatter$Fare, scatter$Age, col = scatter$Sex)
abline(h = 90, lwd = 2, lty = 2)

# Задание 
# Сохраните таблицу airquality
air <- airquality
# 1. Постройте 3 графика рассеивания,
#в котором по оси x будет находится Ozone, а по оси y Wind. Сделайте графики за 5, 7 и 9 месяца

dev.off()
par(mfrow = c(3,1), mar = c(4,4,2,1))
library(dplyr)
may <- air%>%filter(Month==5)
july <- air%>%filter(Month==7)
sept <- air %>% filter(Month == 9)
plot(may$Ozone, may$Wind,  main="MAY")
plot(july$Ozone, july$Wind, main = "July")
plot(sept$Ozone, sept$Wind, main = "September")


#-----------------------------
x <- rnorm(100)
hist(x, breaks = 10)
y <- rnorm(100)
par(mar = c(2,2,2,2))
plot(x, y)
plot(x,y,pch = 2)
plot(x,y,pch = 20)
title('Scatter')
text(-2, 2, 'text')
legend('topleft', legend = 'legend', pch = 20)
abline(lm(x~y))

# https://habr.com/company/eastbanctech/blog/422093/

# Задание
# 1. Загрузить датафрейм vgsales
vgsales<-read.csv("C://Users/dyerl/Desktop/vgsales.csv", stringsAsFactors = F)
# 2. Постройте 3 bar plot'а. Первый по колонке Genre, второй по колонке Platform и третий по колонке Year
dev.off()
par(mfrow = c(3,1), mar = c(4,4,2,1))
library(dplyr)
barplot(table(vgsales$Genre), col = 'pink', main="Genre")
barplot(table(vgsales$Platform), col = 'blue', main="Platform")
barplot(table(vgsales$Year), col = 'purple', main="Year")
# Для тех кто хочет углубиться:
# swirl урок 15 из раздела R Programming

# Дополнительное доп задание:
# Загрузить датафрейм vgsales
par(mar = c(7,4,4,2))
barplot(table(vgsales$Genre),las=2)
lablist.x<-as.vector(c(vgsales$Genre))

# Переверните названия жанров по оси х на 90 градусов, и сделайте так, что бы не обозначения не обрезались