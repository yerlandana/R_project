## ������� ������

install.packages('swirl')
library(swirl)  
library(naniar)
naniar()
swirl()

# �������

# ��� � R ��� �������.

# ������� ������ ��� atomic:
#1. character/string
#2. numeric
#3. integer
#4. logical


# �������. � ������, ������� ���� ������. �� �������� ����� ������������ ��� �������� ����������.

# ������ ����� ������� ������. ����� ���� ������ ������ ������.
# �������� �������. c() �� concatinate

x <- c(1,2,3,4)
x <- c(1:4,6,10,11:18)
x <- c(T, F)
a <- c('dana')
x <- c(a, 'b', 'c') #STRING
y <- c("a", "b", "c") #character

y <- c(1.7, 'a')
y <- c(1, TRUE)
y <- c('a', TRUE)

# ����� ����� ������ ������ � ������� AS
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
as.data.frame(x)
?as.character
x <- c('a', 'b', 'c')
as.numeric(x)
as.logical(x)

#HOMETASK
# �������:
# 1. ������� ������ � ������� ����� �������� [0,1,0,1,0,1] � ��������� ��� � ���������� Y
# 2. ��������� ����� ����� �e�����
# 3. �������� ����� �� ����������
# 4. ���������� � ������� �� ��� ���������� � ������� Y

y <- c(0,1,0,1,0,1)
class(y)
as.logical(y)

# Data Frame. ����� ������� ������ ������, � ������� �� ������
x <- data.frame('a' = c(1:4), 'b' = c('f', 'd', 'f', 'd'), stringsAsFactors = F) # stringsAsFactors = F �� ���� ���������� string � factor
str(x)
x <- c(1:3)
y <- c(10:12)
# ��� �� ��� � ������ � ���������, ����� ������������ ������� ������� ��� �������� ���� �������
data.frame('First var' = x, 'Second var' = y)

# �������:
# 1. ������� ��� ������� X,Y �� ���������� [0,1,0] � ['a', 'b', 'c']. ������� �� ��� ���� �����, ��� ��� �� X ��� ������ ��������,
# � ������ Y ������ ��������. �������� ������� 'alfa' � 'beta'
# 2. �������� ��� ������� X,Y �� ���������� [1,2,3,7] � [T, F, T]. ������� �� ��� ���� �����, ��� ��� �� X ��� ������ ��������,
# � ������ Y ������ ��������. ��� ����������?

x <- c(0,1,0)
y <- c('a', 'b', 'c')
z <- data.frame('alpha'=x, 'beta'=y, stringsAsFactors = F)
str(z)

x <- c(1,2,3,7)
y <- c(TRUE, FALSE, TRUE)
z <- data.frame('1'=x,'2'=y)
str(z)

#Error in data.frame(`1` = x, `2` = y) : 
#arguments imply differing number of rows: 4, 3

# ��������
x <- c(1:3)
names(x)
names(x) <- c('one', 'two', 'three')
x
# � �������� ����� ������������ �����, �� ����� � �����������
x <- data.frame(a = 1:4, b = c('f', 'd', 'f', 'd'), stringsAsFactors = F)
names(x)
names(x) <- c('l', 'v')
x

# �������� �������:
# ������� ���� ����� � ����������� � ���� ����� �������������\�������
# 1. �������� ������ � 5 ������ �������
# 2. �������� ������ � 5 ���������� �������� (� ��� �� �������, � ������� �� ���������� �����)
# 3. �������� ������ � 5 ���������� ���� ('female' ��� ������ � 'male' ��� ������)
# 4. �������� ���� ����� �� ���� ��������, ������ �������� ������� [name, age, sex]

name <- c('Dana', 'Taker', 'Tima', 'Misha', 'Xenia')
age <- c(17,18,16,19,13)
gender <- c('female', 'male', 'male', 'male','female')

people <- data.frame(name = name, age = age, gender = gender)

# ��� ��� ��� ����� ����������:
# 4 � 7 ����� � swirl 

#Done:)

# �������������� ��� �������:
# �������� ������ �� 0 �� 100, ������ � ������� �������

n <- (0:100)
i= n%%2==0
n[i]

###########################################################################################################
# �������������� �������� #################################################################################
###########################################################################################################
# �������
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
m <- matrix(c(1,6,4,5,7, 2), nrow = 2, ncol = 3)
# ����� ������� ������� �� ���������� ��������. ����������� ������ ������
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

# �������:
# 1. ������� ��� ������� X,Y �� ���������� [0,1,0] � ['a', 'b', 'c']. ������� �� ��� �������, ��� ��� �� ������ X ��� ������ ��������,
# � ������ Y ������ ��������
# 2. ������������ ������� matrix(), ��� �� ������� ������� � 4 �������� � 2 ���������.
#������� � ��� ������� ������ c(5:11). ��� ���������?

x <- c(0,1,0)
y <- c('a', 'b', 'c')
cbind(x,y)
m <- matrix(c(5:12), nrow = 4, ncol = 2)

#In matrix(c(5:11), nrow = 4, ncol = 2) :
# data length [7] is not a sub-multiple or multiple of the number of rows [4]



































# �������� ��� ���������
x <- c(1:4)
y <- c(6:9)
x + y # ��������� �������� ������� x � ��������� ������� y
x * y # ���������� ��������, ������ ��������� 
x / y # �������
x > 2 # �������� ������ ������� ������� x � 2. �������� ���������� ������ � TRUE ��� ������� ��������, ������� ������ 2
x >= 2 # ����������� ��������� "������ �� �����"
y == 8 # ������ ������� ������������ � 8. TRUE ���� ������� ����� 8
y != 8 # �������� "�� �����". TRUE ��� ��������� ������� �� ����� 8

# Subsetting
# 2 ���� [], $
# ��������� �� ������ ��������(������)

x <- c('a', 'b', 'c', 'c')
x[2]
x[c(1, 3)]
# �������
# � ��� ���� ������
x <- c(1:20)
# ��������� �� ���� ������ ���� ��������� � ��������� ���� ���������
x[c(1:5, 15:20)]
# ���������� ���������
x <- c('a', 'b', 'c', 'c')
x == 'b' # �������� ��� ��������, ������� ���������� ��� �������� � 'b'
z <- x == 'b'
x[z]
# �������
# � ��� ���� ������
x <- c(1:20)
set.seed(17)
x <- sample(c(1:20), size = 50, replace = T)
# 1. ������� ������ �������� ������ 5
x < 5
z <- x<5
x[z]
# 2. ������� ������ �������� ������ ��� ������ 5
set.seed(17)
x <- sample(c(1:20), size = 50, replace = T)
x <= 5
z <- x<=5
x[z]
# 3. ������� ������ 8
set.seed(17)
x <- sample(c(1:20), size = 50, replace = T)
x == 8
z <- x == 8
x[z]
# 4. ������� ��� �����, ������� �� ����� 10
set.seed(17) #random
x <- sample(c(1:20), size = 50, replace = T)
x != 10
z <- x !=10
x[z]

# ��������� ���� ������
x <- airquality
View(x)
x[5,5] # ����������� ��� ������� ����������, ������� ���� � ������
x[c(1:5), c(1:5)]
x[c(1,3,4), c(1:3)] #row and column
x[,'Ozone'] # ����� ��������� �� �� ������ �������, � �� ��������
x$Ozone # ���������� ������ ���������� ��� ���� ������. ��������� ��� ������� �� �����
x[c(1:5), 'Ozone']
x[c(1:5), c('Ozone', 'Month')]
# �������:
# 1. �������� ������ ���� ���������, ��������� Wind
x[c(1:5), 'Wind']
# 2. ��������� ������ ���� ��������� �� ���� �������
x[c(1:5),]
# 3. ������� 1,10,15 ������ �� ���� �������
x[c(1, 10, 15), c(1:5)]
# 4. ������� 10:15 ������ � ������� Ozone, Wind
x[c(10:15), c('Ozone', 'Wind')]
# 5. �� ������� Temp ������� 1, 10, 15:20 ��������
x$Temp[c(1, 10, 15:20)]
x[c(1, 10, 15:20),'Temp']

#naniar::replace_with_na()

# �������� �������:
# ��� ��� ������� 
mini_mtcars <- mtcars
# ���������� �� ����
View(mini_mtcars)
# � ���� �������� ������� ���������� � 32 �������. ������ ��� ����������� ������ ������� mpg(������ �������), 
# cyl(���������� ���������) � hp(���������� ����)
# 1. ��������� �� �������� ��� ������ � ��� �������: mpg, cyl, hp � ��������� ������� � ���������� 
cars<-mini_mtcars[ , c('mpg', 'cyl', 'hp')]
# 2. ������������ ������� � ���� ������ mini_mtcars �� ['consamption', 'cylinders', 'horse_power']
names(cars) <- c('consumption', 'cylinders', 'horse_power')
# 3. �� ���� ������ mini_mtcars ��������� ������ � 5 �� 10. � ����� ������ ����� ������� ������ �������
 fuel<-cars[5:10, c('consumption')]
 mfuel <- max(fuel, na.rm = FALSE)
  match(mfuel,fuel)
# ��� ��� ��� ����� ����������
# 6 � 8 ���� � swirl

# �������������� ��� �������:
# � ��� ���� ���� ��� � �������������� ����������
x <- data.frame('name' = c('bob', 'bob', 'jhon', 'sid', 'sid', 'bob'), 
                'age' = c(18, 18, 34, 24, 24, 18), stringsAsFactors = FALSE)
x
# ������� ������ ������� �� ����� ���� ������ ������ �� ������������� ������. 
# ����� ������ ��������� ���:
#   name age
# 1  bob  18
# 3 jhon  34
# 4  sid  24
name <-x[, 'name']
pname<-name[!duplicated(name)]
age <-x[, 'age']
page<-age[!duplicated(age)]
cbind(pname,page)

###########################################################################################################
# �������������� �������� #################################################################################
###########################################################################################################

# ����� ������ ��� ����
x <- list(foo = 1:4, bar = 'a')
x[2]
class(x[2])
x[[1]]
class(x[[1]])
x['bar']
x[['bar']]

# ��������� ������. 
# ��� ��� ������� ��� ��������� ������, ��� �������� ��������� �������� ����� ����������. ���� ��� �����, � ���� ��� �������
x <- matrix(1:9, nrow =  3, ncol =  3)
x[1,2] # ��������� ������ �� ������ ������ � ������ �������
x[1:2,3] # ��������� ������� �� 1 � 2 ������ � 3 �������
x[c(1,3),3] # ��������� �� 1 � 3 ������ � 3 ������� 
x[,3] # ��������� ��� 3 �������. �������� �������� ��� ����������� ������ ������ ������
x[1:2, 2:3] # ��������� ���������� �������. ������ 1 � 2 ������ � 2,3 �������


# ����������� ����� ���� ���������� ���������� � ��� ����� �������
# https://r-analytics.blogspot.com/2011/07/r_17.html#.W9PoRWgzZPY
# �������. ���������� � ������������. Labels
x <- factor(c('n', 'y', 'y', 'n', 'y', 'z'))
x
# �� �� ����� ��������������� string � numeric
y <- c('a', 'b', 'c', 'd')
as.numeric(y)
# �� ����� ������, ��� ��� ���������� ��� �����.
as.numeric(x)
# ������� ������� ���� �����, ��� �� ���������� �� ��������� ��������(labels) � ��������
y <- as.numeric(x) 
data.frame(x, y) # ���� �� ������ ����� �������, �� ��� ����� ������� ��� �������
# ����� ����������� � ��������. ������ y ��� 2, � �� 1

# ����� ������������ ������� ��� ��������
table(x)

x <- factor(c('y', 'n', 'y', 'n', 'y'),
            levels = c('y', 'n'))
x
as.numeric(x)

#�������

# �������:
# 1. ������������ ������� � ������ ������ ������������/����� � �����
people
# 2. � ���� ��� �������� ������ � ����� � ���� �������
gender2<-factor(gender)
# 3. �������� ���� �����face
people

# NA
x <- c(1,2,NA, 10, 3)
is.na(x)
z <- is.na(x)
sum(z)

sum(is.na(airquality[ , 'Ozone']))
sum(is.na(airquality))

# ��� ��������� ���������� NA � �������
x <- c(1,2,NA, 10, 3)
x
is.na(x)
z <- is.na(x)
sum(z) # ��� ���������� ������ ��� True ��� ������. ��� ����� 1 c ������� TRUE

# ����� ����� � ������� NA, ������ ��� ��� ������ � ������ � �����������
mean(x)
sum(x)
mean(x, na.rm = TRUE) #remove
sum(x, na.rm = TRUE)

# ��� ����� List
x <- list(1, 'a', TRUE)
x
a <- c(1:100)
b <- matrix(1:6, nrow = 2, ncol = 3)
c <- data.frame(a = c(1:4), b = c(TRUE, FALSE, TRUE, TRUE))
x <- list('first' = a, b, c)
# ���� ������ �� �������������� ������ ����������������. �� �������� ���������� ��� ���������� �����������

# �������� �������:
# 1. ������� ���� ����� � ����������� � 3 �������. ����� ������� � ������ � ������� � ����� � ���� �������
# 2. ������� ����� �� ���� ����� � 3 �������������
# 3. ������� ���� � ������� �� ��������� ��� ���� �����, ������ �� ['frieds', 'relative']

# ��� ��� ��� ����� ����������
# 5 ���� � swirl

# �������������� ��� �������:
# � ��� ���� ���� �����, � ������� ���� NA
x <- data.frame(a = c(NA, 2, NA), b = c('a', NA, 'c'), stringsAsFactors = FALSE)
# ���������� ���������� NA � ������ �������



































#Lesson 3


# ������� � ��� �� ���������

# ��������� ����� ���� ��������� �� ����� ��� �� �������
air <- airquality

mean(air$Ozone)
mean(air$Ozone, na.rm = T)
mean(na.rm = T, x = air$Ozone)
mean(na.rm = T, air$Ozone)

?lm # �������� ������. ��������� ���������. 

#������� ������ ��������������� ����.
lm(data = air, Ozone ~ Wind, model = F)
lm_result <- lm(Ozone ~ Wind, data = air)
summary(lm_result)

# ������ ������� �������
first_function <- function(arg) {
  arg^2
}
first_function(8)
# ����� ������, ��� �� ��� ����� ��������� ������ ������� ��������������� � ����� ����������. ��� ������ �� ��������� ������� a, 
# 8 ����������� � ���������� x, ������� �������� ���������� �������

# � ������� ���� ������� ������ � ��������.

first_function <- function(arg1, arg2) {
  arg1 + arg2
}
first_function(c(5:7), c(7:9))
# � �������� �� ������ �� �������� ��������� ��������� �������

first_function <- function(arg1, arg2) {
  arg1^2
} 
first_function(2, 7)
# Lazy Evaluation - �� ������������ �� ������ ���������

# �������:
# ������� ���������� ��� �� ��������� � �������� �� ��������� ������, � ������� ��������� ��������� �� ���������. 
# ���� �������� � ��� ������� ���������� � �����. �� �� ����� ��� ����� ��������� ���������� ���������� � ����
# ������ ������� � ��� ���������� 5 ��������, ������� ����� ��������� ���� � ��� �� 10, 15, 35, 8, 121 ��
customers <- c(10, 15, 35, 8, 121)
# �������� ������� ������� ���������� �� ���������� � ����
# 1 ��������� ��� 0,6 ����

x <- c(5:15)

more10 <- function(arg1) { # ������� ������� ���������� �������� �������� � 10
  x <- arg1 > 10
  arg1[x]
}
more10(c(5:15))

arg1 <- c(5:20)
function(arg1){   #Mistake
x <- arg1 > 10
arg1[x]
}


more <- function(vect, n) { # ��������� ��� ���� �������� Vector
  vect[vect > n]
}

more(x, n = 10)

more <- function(vect, n = 10) { # ������������� �� ��������� �������� n
  vect[vect > n]
}

more(x)
more(x, n = 7)
seq(0,1,0.1) #min max number to add to make sequence
# ������� 
# �������� ������� ����������� ������� ��� �������� �������� �� �������

# ��� ��� ���������� ��� �������� ��������� �������, � ��������� ��� � ����� ���������� 
# ���������� ���������� ��������� � ������� � ������� ������� length(), � ��������� ��� �������� � ����� ����������
# �������� ����� ��������� �� ���������� ���������
x <- c(10:40)
meanCount <- function(x) {
  s <- sum(x, na.rm = FALSE)
  l <- length(x)
   s/l
}
# EXTRA: ���� ���������� �� NA � �������

# ���������� ������
?read.csv
tit <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', stringsAsFactors = F, encoding = 'UTF-8') 
head(tit) # ��������� ������ 6 �����, ��� �� ������ ��� ���� ����� ��������
str(tit) # ����� ���������� � ���� ������
# ����� �� ������ ����� ��� ���� ���� ����� ������������� �������� � ���� ������� ��� ������������

# �������� ������ ���� ������
# ������ ��� �� ����� ������, ��� ������� ����������� �������� � ������ ������� � ��� ������������ ��������� ����������
  
# ������ � �������� NA
x <- is.na(tit$Survived)
sum(x) 
# ��� NA �������� � ������� Survived

# �������� ����� ����������� �������� � ��������
table(tit$Survived)

# ��� ���� �������� �������
summary(tit$Age)

# ��� ������� ������� ��� ��� ������������ �������

# ������� ��� � R-Markdown
# https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf

# �������� �������:
# ����� ������ ������� �� ������� "�������" ������ ������� � 10 �� 50
t <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', skip =9, nrows =40) 
t[10:50,]
# �� ��������� �������� �� �� ��� ������� ����� ���������� �� ���������

# ��� ��� ��� ����� ����������
# 9 ���� � swirl











#������ � ��������� � �������

# ������� ����� ��������������. � ��� �� ����� �������������� ��������� �������� �������

air <- airquality
air$Ozone <- air$Ozone * 2
air$Ozone <- air$Wind
air$Ozone[1:5] <- 0

# ������� ����� ��������� � �������
air$new <- 1
air$new <- NULL
air$new <- air$Ozone - air$Wind
#�������� � dplyr
install.packages('dplyr')
install.packages('ggplot2')
#����� ��������� � ������� ��� �����:

#1. ������ ��� �� ������ �������.
#2. ������� ��� � ���� ����.
#3. ��������� ���.

library(ggplot2)
library(dplyr)

diam <- diamonds
str(diamonds)

# �������� ������� dplyr
# * filter() ������� �� �������.
# * arrange() �����������.
# * select() ������� �������.
# * mutate() ������� ����� �������.
# * summarise() ���������� �������� � ������.
# * group_by
# * sample_n() ������� ��������� �������.

# * ���������� �������� %>% ��� ��������

y <- select(diam, cut, carat) # ������� ������ ������� cut � carat �� ������� diamonds
z <- arrange(y, carat) # ������������� �� ��� ��������� � ���������� y, �� ������� carat


# filter()

x <- filter(diam, color == 'D')
x <- filter(diam, color == 'D', carat > 0.7)

# arrange()
head(diam)
x <- arrange(diam, carat)
head(x)
min(diam$carat)
summary(x$carat)
tail(x)
x <- arrange(diam, desc(carat))
head(x)
tail(x)
x <- arrange(diam, cut, carat)
# ������:
filter(x, cut == 'Good') # ��� ������ ��� ������ ����?

# �������
x <- diam %>% 
  filter(color == 'D') %>% 
  arrange(desc(depth))

# ������� �� ����
# 1. ��������� ���� ����� airquality � ���������� air
air <- airquality
# 2. ������������� ��� ��� �� �������� ������ �������� ��� ����� ���� ������
a <- filter(air, Day == '5')
# 3. ������������� ��� ��� �� �������� ������ �������� ��� �������� ������ � ������������� �� �� ��������� ������� Ozone. (����������� �������). � ����� ���� ������ �������� Ozone
# ���� ������������
a1 <- air %>%filter(Month == '7')%>%arrange(desc(Ozone))
max(a1$Ozone, na.rm =TRUE)
# 4. ����� ������� �������� Ozone �� ��� �������. ����������� ������� mean() � �� ��������, ��� � ������� Ozone ���� NA.
m<-mean(air$Ozone, na.rm =TRUE)
# 5. ������������� �������� � ������� ���, ��� �� �������� ������ ������ � ������� �������� Ozone ���� ��������
result <- air %>% 
  filter(Ozone>mean(Ozone, na.rm =TRUE))
colSums(is.na(air))
sapply(air, function(x)sum(is.na(x)))

# ���������� ����� ���������� �������� � ���������
# select()
x <- diam %>% select(carat, depth, x)
x <- diam %>% select(table:cut)
x <- diam %>% select(-(cut:table)) #���������� �� ��������� �� ��� �� �����
x <- diam %>% select(cut:table, -clarity) #���������� �� ��������� �� �������
# ����� ������������ ���������� �������
x <- diam %>% select(x:z, everything())  #��� ���� ����� �������� ������� �� �������
# ����� ������������� ����������
x <- diam %>% select(x_i_want = x, everything())

# �������
# �������� ������� Price, �� Carat �� Color. ������������ �� ����� D � 
x<- diam %>% filter(color == 'D')%>%select(price, carat:color)%>%arrange(price)
# ������������ �� Price � ������� �����������

# mutate()
x <- diam %>% mutate(sq = x * y * z)
x <- diam %>% mutate(sq = x * y * z, pl = sq^2)
x <- diam %>% mutate(sq = x * y * z, pl = log(x + y + z))
# ����� �������� ������������ ����������
x <- diam %>% mutate(carat = carat*10)
x <- diam %>% mutate(depth = ifelse(depth < 60, 0, depth))#if true will write 0, false
#will write true

# group_by() � summarise()
x <- diam %>% group_by(color)
x <- diam %>% group_by(color) %>% mutate(mean = mean(carat), count = n())

x <- diam %>% group_by(color) %>%  
  summarise(mean = mean(carat), count = n())

library(dplyr)

# �������
# 1. ��������� ���� ����� airquality � ���������� air
air <- airquality
# 2. �������� ������� ozone_square, �������� ������� ����� ����� ����� � ��������
x<- air%>%mutate(ozone_square = Ozone^2)%???%V
# 3. �������� ������� mean_temp, ������� ����� ����� �������� �������� ����������� � ������ �����
x<- air%>%group_by(Month)%>%summarize(mean_temp = mean(Temp), count = n())
# 4. �������� ��������� ������� �������������� �� ����, � ��� ������� ��� ���������� ������������ �������� �����. 
x<- air%>%group_by(Day)%>%summarize(max = max(Ozone))

#swirl block dplr

# ������ � GamingData
dt <- read.csv('Documents/Study/Method/Lectures/5 weeks/Data/vgsales.csv', stringsAsFactors = F)
str(dt)
head(dt)

# ������ 1. ����� ���������� ��������� �� ���������� ��� ������ ���
dt %>% group_by(Year, Platform) %>% summarise(count = n()) %>% top_n(1)
# ������ 2. ����� ���������� ��������� ������ ���
dt %>% group_by(Year, Platform) %>% summarise(total = sum(Global_Sales)) %>% top_n(1) %>% View()
# ������ 3. ��� 10 ���������, ������� ��������� ������ ����� ���
dt %>% group_by(Publisher) %>% summarise(count = n()) %>% top_n(10) %>% arrange(desc(count))

# �������
# ������� ������ �� ������ � ������� dplyr.
library(dplyr)
# ��� ��� ��� ����� ����������:
# swirl ���� 1, 2 �� Getting_and_Cleaning_Data


# �������������� ��� �������:
# 1. ��������� ���� ����� airquality � ���������� air
air <- airquality
# 2. �������� ����� ������� � ��������� Dangerous.
x<- air %>% mutate(Dangerous = ifelse(Ozone>mean(Ozone, na.rm = T),'y','n'))
#��� ������ ��������� 'yes' ���� � ���� ���� 
#�������� Ozone ���� �������� � 'no' ���� ���� ��� ����� ��������




















air <- airquality
sapply(air, function(x) sum(is.na(x)))

# ��������� NA ������
air$Ozone[is.na(air$Ozone)] <- 0

# ��������� NA ������� �� �������
air <- airquality
air$Ozone[is.na(air$Ozone)] <- 0

air <- airquality
library(dplyr)
air <- air %>% replace_na(list(Ozone = 0))

# ������������ �������

# 1. ������� ��������� ����������� �� ������ - https://raw.githubusercontent.com/jokecamp/FootballData/master/UEFA_European_Championship/Euro 2012/Euro 2012 stats TEAM.csv
# ���� ������� �� ���������� ���������� ������ �� ������� 2012
library(dplyr)
soccer <- read.csv('https://raw.githubusercontent.com/jokecamp/FootballData/master/UEFA_European_Championship/Euro 2012/Euro 2012 stats TEAM.csv',
               stringsAsFactors = F,
               encoding = 'UTF-8',  header=T, na.strings=c("","NA"))

# 2. ������� ������ ������������ � ���� 12
# ����� - 16
nrow(soccer)
# 3. ������� ������� � ��������?
# ����� - 35
ncol(soccer)
# 4. �������� ������� Team, Yellow Cards and Red Cards � ������������ �� Red Cards � Yellow Cards ��� ��� �� ������ ������� ��������� ������� � ���������� �����������
# ����� ������ ��� �������?
# ����� - Greece, Poland, Republic of Ireland
football <- soccer %>%select(Team, Yellow.Cards, Red.Cards)%>%arrange(desc(Red.Cards), desc(Yellow.Cards))
# 5. ���������� ����� ���������� ����� ��� ������ England, Italy and Russia
# ����� - 16
goal <- soccer%>%filter(Team%in%c('England', 'Italy', 'Russia'))
sum(goal$Goals)
# 6. ������������ ������� �� ������� ������ �������� (Red.Cards). ���������� ������� ���������� �������� (Offsides) ��� ������ ������� �������� ������� ����� � �� ��������.
# ����� - ������� ������� �������� - 8.67, ������� �� �������� - 8
gred <- soccer %>%
        group_by(Red.Cards)%>%summarize(mean_off = mean(Offsides))
# ���
# 7. �������� ������� ������� ������ ������ 6 �����. ����� ������� Shooting Accuracy � ���� ������?
# ����� - 51.85
teams <- soccer%>%select(Team, Goals,Shooting.Accuracy)%>%filter(Goals>6)
mean(as.numeric(teams$Shooting.Accuracy))
as.numeric(teams$Shooting.Accuracy)
class(teams$Shooting.Accuracy)
soccer$Shooting.Accuracy <- gsub('%', '', soccer$Shooting.Accuracy)
# ���
# 8. �������� ������ ������� ������������ �� ����� G. ������� ����� ������?
# ����� - 2
gstart <- soccer%>%grep('^G', soccer$Team, value=T)
# 9. ��������� ���� ����� �� ������ - https://raw.githubusercontent.com/justmarkham/DAT8/master/data/drinks.csv
# ��� ������ � ������������ �������� � ������ �������
a<- read.csv('https://raw.githubusercontent.com/justmarkham/DAT8/master/data/drinks.csv', stringsAsFactors = F)
# 10. ���������, ���� �� NA � �������
nanu<-sapply(a, function(x)sum(is.na(x)))
# 11. ��������� NA  
library(dplyr)
a$continent[is.na(a$continent)] <- 0
a_sorted <- a %>% replace_na(list(continent = "Not"))
# 11. ����� ��������� ���� ������ ���� � �������? 
# ����� - EU
rehou <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings))
# 12. ��� ������� ���������� ���������� ������������, ����������� � ������� ����������� ����. �� ����� ���������� ������� ����������� ����������?
# ����� - AS
rehou <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings),
                                              max = max(beer_servings),
                                              min= min(beer_servings))
a<-rehou$continent[rehou$mean == min(rehou$mean)]
# 13. ���������� ������� ����������� ������� ���� ��������, ��� ������� ����������
rehou <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings))