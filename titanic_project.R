# Basic plot in R

# ��� ���� �� ������������� ������
# 1. ������ �������� ������
# 2. ����� ��������������
# 3. ������������ ���������� �������

# ������� ������� �������
# 1. ������� ������
# 2. ggplot2
# 3. Lattice - ��������� ���� ����� ��������

# ���� ��������
# 1. ����� ���������� (summary())
# 2. Boxplot - ���� � �����
# 3. �����������
# 4. Density plot
# 5. Barplot

# ����� ����������
titanic <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', stringsAsFactors = F)
air <- airquality
summary(air$Wind)

# ��������� ���������������� ���������� � ������������

# ����������� - ��� ��������������
hist(titanic$Age, col = 'blue')
rug(titanic$Age)
hist(titanic$Age, col = 'pink', breaks = 50)
rug(titanic$Age)

hist(titanic$Age, col = 'green', breaks = 50)
abline(v = 18, lwd = 2)
abline(v = mean(titanic$Age, na.rm = TRUE), col = 'magenta', lwd = 4)
abline(v= max(titanic$Age, na.rm =TRUE), col = 'orange', lwd = 6)

# Barplot - ��� ������������
table(titanic$Sex)
barplot(table(titanic$Sex), col = 'red', main = 'Gender popularity')

# �������:
# 1. ������ ������� Age � ���������� titanic ����� ����� ��������� ����������� ������ �� ��� ����� �������. �� �����?
#FARE
# 2. ��������� ����������� �� ������� �� ������� �������. ��������� �� � ����� ���� � ���������� �������� breaks ������ 40. ��� �� ������ ������� �� ������������� �������?
hist(titanic$Fare , col = 'blue', breaks = 40)
# 3. ������� �������. ��������� ���������� dplyr, � � ������� ������� filter �������� ������ ������, � ������� �������� Fare ���� 300
library(dplyr)
fare <- titanic%>%filter(Fare<200)
# 4. ��������� ����������� ��� ��� � ���� �� �����������
hist(fare$Fare , col = 'blue', breaks = 40)
# 5. ��������� bar-plot �� ������� Embarked
barplot(table(titanic$Embarked), col = 'pink', main="Embarked")
table(titanic$Embarked)
# 2 dimensions plots
# 1. Multi 1D plots
# 2. ��������� �����������
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

# �����������
dev.off()
plot(titanic$Fare, titanic$Age, col = 'blue')
# ������ �������. ��������� �� ���.
scatter <- titanic %>% filter(Fare < 200)
plot(scatter$Fare, scatter$Age, col = 'blue')

scatter$Sex <- as.factor(scatter$Sex)
plot(scatter$Fare, scatter$Age, col = scatter$Sex)
abline(h = 90, lwd = 2, lty = 2)

# ������� 
# ��������� ������� airquality
air <- airquality
# 1. ��������� 3 ������� �����������,
#� ������� �� ��� x ����� ��������� Ozone, � �� ��� y Wind. �������� ������� �� 5, 7 � 9 ������

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

# �������
# 1. ��������� ��������� vgsales
vgsales<-read.csv("C://Users/dyerl/Desktop/vgsales.csv", stringsAsFactors = F)
# 2. ��������� 3 bar plot'�. ������ �� ������� Genre, ������ �� ������� Platform � ������ �� ������� Year
dev.off()
par(mfrow = c(3,1), mar = c(4,4,2,1))
library(dplyr)
barplot(table(vgsales$Genre), col = 'pink', main="Genre")
barplot(table(vgsales$Platform), col = 'blue', main="Platform")
barplot(table(vgsales$Year), col = 'purple', main="Year")
# ��� ��� ��� ����� ����������:
# swirl ���� 15 �� ������� R Programming

# �������������� ��� �������:
# ��������� ��������� vgsales
par(mar = c(7,4,4,2))
barplot(table(vgsales$Genre),las=2)
lablist.x<-as.vector(c(vgsales$Genre))

# ����������� �������� ������ �� ��� � �� 90 ��������, � �������� ���, ��� �� �� ����������� �� ����������