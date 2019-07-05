## Вводная лекция

install.packages('swirl')
library(swirl)  
library(naniar)
naniar()
swirl()

# Объекты

# Все в R это объекты.

# Базовые классы или atomic:
#1. character/string
#2. numeric
#3. integer
#4. logical


# Функции. В кратце, функция тоже объект. Ее название можно воспринимать как название переменной.

# Вектор самый простой объект. Может быть только одного класса.
# Создание вектора. c() от concatinate

x <- c(1,2,3,4)
x <- c(1:4,6,10,11:18)
x <- c(T, F)
a <- c('dana')
x <- c(a, 'b', 'c') #STRING
y <- c("a", "b", "c") #character

y <- c(1.7, 'a')
y <- c(1, TRUE)
y <- c('a', TRUE)

# Можно легко менять классы с помощью AS
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
# Задание:
# 1. Создать вектор в котором будут значения [0,1,0,1,0,1] и сохранить его в переменную Y
# 2. Проверить класс этого вeктора
# 3. Поменять класс на логический
# 4. Напечатать в консоль то что получилось в векторе Y

y <- c(0,1,0,1,0,1)
class(y)
as.logical(y)

# Data Frame. Может хранить разные классы, в отличии от матриц
x <- data.frame('a' = c(1:4), 'b' = c('f', 'd', 'f', 'd'), stringsAsFactors = F) # stringsAsFactors = F не дает превратить string в factor
str(x)
x <- c(1:3)
y <- c(10:12)
# Иак же как в случае с матрицами, можно использовать готовые вектора для создания дата фреймов
data.frame('First var' = x, 'Second var' = y)

# Задание:
# 1. Создать два вектора X,Y со значениями [0,1,0] и ['a', 'b', 'c']. Сделать из них дата фрейм, так что бы X был первой колонкой,
# а вектор Y второй колонкой. Назовите колонки 'alfa' и 'beta'
# 2. Создайте два вектора X,Y со значениями [1,2,3,7] и [T, F, T]. Сделать из них дата фрейм, так что бы X был первой колонкой,
# а вектор Y второй колонкой. Что получилось?

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

# Названия
x <- c(1:3)
names(x)
names(x) <- c('one', 'two', 'three')
x
# В векторах имена используются редко, но часто в датафреймах
x <- data.frame(a = 1:4, b = c('f', 'd', 'f', 'd'), stringsAsFactors = F)
names(x)
names(x) <- c('l', 'v')
x

# Домашнее задание:
# Создать дата фрейм с информацией о пяти ваших родственниках\друзьях
# 1. Создайте вектор с 5 любыми именами
# 2. Создайте вектор с 5 значениями возроста (в том же порядке, в котором вы записывали имена)
# 3. Создайте вектор с 5 значениями пола ('female' для женщин и 'male' для мужчин)
# 4. Создайте дата фрейм из этих векторов, указав названия колонок [name, age, sex]

name <- c('Dana', 'Taker', 'Tima', 'Misha', 'Xenia')
age <- c(17,18,16,19,13)
gender <- c('female', 'male', 'male', 'male','female')

people <- data.frame(name = name, age = age, gender = gender)

# Для тех кто хочет углубиться:
# 4 и 7 уроки в swirl 

#Done:)

# Дополнительное доп задание:
# Создайте вектор от 0 до 100, только с четными числами

n <- (0:100)
i= n%%2==0
n[i]

###########################################################################################################
# ДОПОЛНИТЕЛЬНЫЙ МАТЕРИАЛ #################################################################################
###########################################################################################################
# Матрицы
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
m <- matrix(c(1,6,4,5,7, 2), nrow = 2, ncol = 3)
# Можно создать матрицу из нескольких векторов. Обязательно одного класса
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

# Задание:
# 1. Создать два вектора X,Y со значениями [0,1,0] и ['a', 'b', 'c']. Сделать из них матрицу, так что бы вектор X был первой колонкой,
# а вектор Y второй колонкой
# 2. Использовать функцию matrix(), что бы создать матрицу с 4 строками и 2 колонками.
#Вписать в эту матрицу вектор c(5:11). Что получится?

x <- c(0,1,0)
y <- c('a', 'b', 'c')
cbind(x,y)
m <- matrix(c(5:12), nrow = 4, ncol = 2)

#In matrix(c(5:11), nrow = 4, ncol = 2) :
# data length [7] is not a sub-multiple or multiple of the number of rows [4]



































# Операции над векторами
x <- c(1:4)
y <- c(6:9)
x + y # Прибавить элементы вектора x к элементам вектора y
x * y # Аналогично сложению, только умножение 
x / y # Деление
x > 2 # Сравнить каждый элемент вектора x с 2. Вернется логический вектор с TRUE для каждлго элемента, который больше 2
x >= 2 # Выполняется сравнение "больше ии равно"
y == 8 # Каждый элемент сравнивается с 8. TRUE если элемент равен 8
y != 8 # Операция "не равно". TRUE для элементов которые не равны 8

# Subsetting
# 2 вида [], $
# Сабсетинг по номеру элемента(индекс)

x <- c('a', 'b', 'c', 'c')
x[2]
x[c(1, 3)]
# Задание
# У вас есть вектор
x <- c(1:20)
# Извлеките из него первые пять элементов и последние пять элементов
x[c(1:5, 15:20)]
# Логические сравнения
x <- c('a', 'b', 'c', 'c')
x == 'b' # Операция над вектором, которая сравнивает все элементы с 'b'
z <- x == 'b'
x[z]
# Задание
# У вас есть вектор
x <- c(1:20)
set.seed(17)
x <- sample(c(1:20), size = 50, replace = T)
# 1. Извлечь только элементы меньше 5
x < 5
z <- x<5
x[z]
# 2. Извлечь только элементы меньше или равные 5
set.seed(17)
x <- sample(c(1:20), size = 50, replace = T)
x <= 5
z <- x<=5
x[z]
# 3. Извлечь только 8
set.seed(17)
x <- sample(c(1:20), size = 50, replace = T)
x == 8
z <- x == 8
x[z]
# 4. Извлечь все числа, которые не равны 10
set.seed(17) #random
x <- sample(c(1:20), size = 50, replace = T)
x != 10
z <- x !=10
x[z]

# Сабсетинг дата фрейма
x <- airquality
View(x)
x[5,5] # Выполняются все правила сабсетинга, которые есть у матриц
x[c(1:5), c(1:5)]
x[c(1,3,4), c(1:3)] #row and column
x[,'Ozone'] # Можно сабсетить не по номеру колонки, а по названию
x$Ozone # Уникальный способ сабсетинга для дата фрейма. Извлекает все колонку по имени
x[c(1:5), 'Ozone']
x[c(1:5), c('Ozone', 'Month')]
# Задание:
# 1. Извлекие первые пять элементов, изколонки Wind
x[c(1:5), 'Wind']
# 2. Извлеките первые пять элементов из всех колонок
x[c(1:5),]
# 3. Извлечь 1,10,15 строки из всез колонок
x[c(1, 10, 15), c(1:5)]
# 4. Извлечь 10:15 строки и колонки Ozone, Wind
x[c(10:15), c('Ozone', 'Wind')]
# 5. Из колонки Temp извлечь 1, 10, 15:20 значения
x$Temp[c(1, 10, 15:20)]
x[c(1, 10, 15:20),'Temp']

#naniar::replace_with_na()

# Домашнее задание:
# Вам дан датасет 
mini_mtcars <- mtcars
# Посмотрите на него
View(mini_mtcars)
# В этом датасете собрана информация о 32 машинах. Сейчас нам понадобятся только колонки mpg(расход топлива), 
# cyl(количество цилиндров) и hp(лошадинные силы)
# 1. Извлеките из датасета все строки и три колонки: mpg, cyl, hp и сохраните датасет в переменную 
cars<-mini_mtcars[ , c('mpg', 'cyl', 'hp')]
# 2. Переименуйте колонки в дата фрейме mini_mtcars на ['consamption', 'cylinders', 'horse_power']
names(cars) <- c('consumption', 'cylinders', 'horse_power')
# 3. Из дата фрейма mini_mtcars извлеките машигы с 5 по 10. У какой машины самый большой расход топлива
 fuel<-cars[5:10, c('consumption')]
 mfuel <- max(fuel, na.rm = FALSE)
  match(mfuel,fuel)
# Для тех кто хочет углубиться
# 6 и 8 урок в swirl

# Дополнительное доп задание:
# У вас есть дата сет с повторяющимися значениями
x <- data.frame('name' = c('bob', 'bob', 'jhon', 'sid', 'sid', 'bob'), 
                'age' = c(18, 18, 34, 24, 24, 18), stringsAsFactors = FALSE)
x
# Найдите способ извлечь из этого дата фрейма только не дублирующиеся строки. 
# Ответ должен выглядеть так:
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
# ДОПОЛНИТЕЛЬНЫЙ МАТЕРИАЛ #################################################################################
###########################################################################################################

# Очень кратко про лист
x <- list(foo = 1:4, bar = 'a')
x[2]
class(x[2])
x[[1]]
class(x[[1]])
x['bar']
x[['bar']]

# Сабсетинг матриц. 
# Так как матрицы это двумерный объект, нам придется извлекать элементы двумя значениями. Одно для строк, и одно для колонок
x <- matrix(1:9, nrow =  3, ncol =  3)
x[1,2] # Извлекаем объект из первой строки и второй колонки
x[1:2,3] # Извлекаем объекты из 1 и 2 строки и 3 колонки
x[c(1,3),3] # Извлекаем из 1 и 3 строки и 3 колонки 
x[,3] # Извлекаем всю 3 колонку. Обратите внимание что извлекается объект класса вектор
x[1:2, 2:3] # Извлекаем уменьшеную матрицу. Только 1 и 2 строку и 2,3 колонки


# Разбираемся какие типы переменных существуют и что такое факторы
# https://r-analytics.blogspot.com/2011/07/r_17.html#.W9PoRWgzZPY
# Факторы. Порядковые и непорядковые. Labels
x <- factor(c('n', 'y', 'y', 'n', 'y', 'z'))
x
# Мы не можем сконвертировать string в numeric
y <- c('a', 'b', 'c', 'd')
as.numeric(y)
# Но можем фактор, так как фактирески это число.
as.numeric(x)
# Давайте сделаем дата фрейм, что бы посмотреть на текстовые значения(labels) и числовые
y <- as.numeric(x) 
data.frame(x, y) # если не укажем имена колонок, то они будут названы как вектора
# Нужно разобраться с порядком. Почему y это 2, а не 1

# Часто используемая функция для факторов
table(x)

x <- factor(c('y', 'n', 'y', 'n', 'y'),
            levels = c('y', 'n'))
x
as.numeric(x)

#Домашка

# Задание:
# 1. Восстановите векторы с именем вашего родственника/друга и полом
people
# 2. В этот раз запишите вектор с полом в виде фактора
gender2<-factor(gender)
# 3. Создайте дата фреймface
people

# NA
x <- c(1,2,NA, 10, 3)
is.na(x)
z <- is.na(x)
sum(z)

sum(is.na(airquality[ , 'Ozone']))
sum(is.na(airquality))

# Как посчитать количество NA в векторе
x <- c(1,2,NA, 10, 3)
x
is.na(x)
z <- is.na(x)
sum(z) # Это происходит потому что True это фактор. это цифра 1 c лейблом TRUE

# Важно знать о наличии NA, потому что они мешают в работе и вычислениях
mean(x)
sum(x)
mean(x, na.rm = TRUE) #remove
sum(x, na.rm = TRUE)

# Что такое List
x <- list(1, 'a', TRUE)
x
a <- c(1:100)
b <- matrix(1:6, nrow = 2, ncol = 3)
c <- data.frame(a = c(1:4), b = c(TRUE, FALSE, TRUE, TRUE))
x <- list('first' = a, b, c)
# Лист пришел из низкоуровневых языков программирования. На практике прменяется для сокращения размерности

# Домашнее задание:
# 1. Создать дата фрейм с информацией о 3 друзьях. Нужна колонка с именем и колонка с полом в виде фактора
# 2. Создать такой же дата фрейм о 3 родственниках
# 3. Создать лист в который вы поместите эти дата фрейм, назвав их ['frieds', 'relative']

# Для тех кто хочет углубиться
# 5 урок в swirl

# Дополнительное доп задание:
# У вас есть дата фрейм, в котором есть NA
x <- data.frame(a = c(NA, 2, NA), b = c('a', NA, 'c'), stringsAsFactors = FALSE)
# Посчитайте количество NA в первой колонке



































#Lesson 3


# Функции и как их создавать

# Аргументы могут быть назначены по имени или по порядку
air <- airquality

mean(air$Ozone)
mean(air$Ozone, na.rm = T)
mean(na.rm = T, x = air$Ozone)
mean(na.rm = T, air$Ozone)

?lm # Линейная модель. Посмотрим аргументы. 

#Сделаем первый статитстический тест.
lm(data = air, Ozone ~ Wind, model = F)
lm_result <- lm(Ozone ~ Wind, data = air)
summary(lm_result)

# Первая простая функция
first_function <- function(arg) {
  arg^2
}
first_function(8)
# Важно понять, что то что будет поступать внутрь функции пересохраняется в новую переменную. Как только мы запускаем функцию a, 
# 8 сохраняется в переменную x, которая является аргументом функции

# У функций есть входные данные и выходные.

first_function <- function(arg1, arg2) {
  arg1 + arg2
}
first_function(c(5:7), c(7:9))
# в функциях на выходе вы получите результат последней команды

first_function <- function(arg1, arg2) {
  arg1^2
} 
first_function(2, 7)
# Lazy Evaluation - не используются не нужные аргументы

# Задание:
# Давайте представим что вы работаете в компании по перевозке грузов, и считете стоимость перевозки за киллометр. 
# Ваши партнеры в США считают расстояние в милях. Из за этого вам нужно постоянно переводить киллометры в мили
# Скажем сегодня к вам обратилось 5 клиентов, которые хотят перевезти груз в США на 10, 15, 35, 8, 121 км
customers <- c(10, 15, 35, 8, 121)
# Напишите функцию которая переводила бы киллометры в мили
# 1 киллометр это 0,6 миль

x <- c(5:15)

more10 <- function(arg1) { # Функция которая сравнивает входящее значение с 10
  x <- arg1 > 10
  arg1[x]
}
more10(c(5:15))

arg1 <- c(5:20)
function(arg1){   #Mistake
x <- arg1 > 10
arg1[x]
}


more <- function(vect, n) { # Добавляем еще один аргумент Vector
  vect[vect > n]
}

more(x, n = 10)

more <- function(vect, n = 10) { # Устанавливаем по умолчанию аргумент n
  vect[vect > n]
}

more(x)
more(x, n = 7)
seq(0,1,0.1) #min max number to add to make sequence
# Задание 
# Напишите функцию собственную функцию для подсчета среднего из вектора

# Для это ссумируйте все элементы входящего вектора, и сохраните его в новую переменную 
# Посчитайте количество элементов в векторе с помощью функции length(), и сохраните это значение в новую переменную
# Поделите сумму элементов на количество элементов
x <- c(10:40)
meanCount <- function(x) {
  s <- sum(x, na.rm = FALSE)
  l <- length(x)
   s/l
}
# EXTRA: сами избавьтесь от NA в функции

# считывание файлов
?read.csv
tit <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', stringsAsFactors = F, encoding = 'UTF-8') 
head(tit) # Посмотрим первые 6 строк, что бы понять как дата фрейм выглядит
str(tit) # Общая информация о дата фрейме
# Когда вы берете новый для себя дата фрейм рекомендуется начинать с этих функций для ознакомления

# Начинием анализ дата фрейма
# Первое что мы хотим узнать, это сколько пропущенных значений в каждой колонке и как распределены факторные переменные
  
# Начнем с проверки NA
x <- is.na(tit$Survived)
sum(x) 
# Нет NA значений в колонке Survived

# Проверим какое соотношение выживших и погибших
table(tit$Survived)

# Еще одна полезная функция
summary(tit$Age)

# Эти функции помогут вам для формирования гипотез

# Запишем это в R-Markdown
# https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf

# Домашнее задание:
# Найти способ считать из таблицы "Титаник" строки начиная с 10 по 50
t <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', skip =9, nrows =40) 
t[10:50,]
# Не обращайте внимание на то что колонки будут называться не правильно

# Для тех кто хочет углубиться
# 9 урок в swirl











#Работа с колонками в таблице

# Колонки можно перезаписывать. А так же можно перезаписывать отдельные элементы колонок

air <- airquality
air$Ozone <- air$Ozone * 2
air$Ozone <- air$Wind
air$Ozone[1:5] <- 0

# Колонки можно добовлять и удалять
air$new <- 1
air$new <- NULL
air$new <- air$Ozone - air$Wind
#Введение в dplyr
install.packages('dplyr')
install.packages('ggplot2')
#Когда работаете с данными Вам нужно:

#1. Понять что вы хотите сделать.
#2. Описать это в виде кода.
#3. Выполнить код.

library(ggplot2)
library(dplyr)

diam <- diamonds
str(diamonds)

# Основные функции dplyr
# * filter() выбрать по условию.
# * arrange() сортировать.
# * select() выбрать столбцы.
# * mutate() создать новую колонку.
# * summarise() объеденить значения в группу.
# * group_by
# * sample_n() сделать случайную выборку.

# * Уникальный оператор %>% для пайпинга

y <- select(diam, cut, carat) # Выбрать только колонки cut и carat из таблицы diamonds
z <- arrange(y, carat) # Отсортировать то что сохранили в переменную y, по колонке carat


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
# Вопрос:
filter(x, cut == 'Good') # что делает эта строка кода?

# Пайпинг
x <- diam %>% 
  filter(color == 'D') %>% 
  arrange(desc(depth))

# Задание на урок
# 1. Сохранить дата фрейм airquality в переменную air
air <- airquality
# 2. Отфильтровать так что бы остались только значения для пятых дней месяца
a <- filter(air, Day == '5')
# 3. Отфильтровать так что бы остались только значения для седьмого месяца и отсортировать их по значениям колонки Ozone. (Используйте пайпинг). В какой день месяца значение Ozone
# было максимальным
a1 <- air %>%filter(Month == '7')%>%arrange(desc(Ozone))
max(a1$Ozone, na.rm =TRUE)
# 4. Найти среднее значение Ozone по все таблице. Используйте функцию mean() и не забудьте, что в колонке Ozone есть NA.
m<-mean(air$Ozone, na.rm =TRUE)
# 5. Отфильтровать значения в таблице так, что бы остались только строки в которых значения Ozone выше среднего
result <- air %>% 
  filter(Ozone>mean(Ozone, na.rm =TRUE))
colSums(is.na(air))
sapply(air, function(x)sum(is.na(x)))

# Попробуйте сразу привыкнуть работать с пайпингом
# select()
x <- diam %>% select(carat, depth, x)
x <- diam %>% select(table:cut)
x <- diam %>% select(-(cut:table)) #избавиться от элементов от кат до тейбл
x <- diam %>% select(cut:table, -clarity) #избавиться от элементов от кларити
# можно переставлять переменные местами
x <- diam %>% select(x:z, everything())  #для того чтобы изменить таблицу по коламнс
# можно переименовать переменную
x <- diam %>% select(x_i_want = x, everything())

# Задание
# Выберите колонки Price, от Carat до Color. Отфильтруйте по цвету D и 
x<- diam %>% filter(color == 'D')%>%select(price, carat:color)%>%arrange(price)
# Отсортируйте по Price в порядке возростания

# mutate()
x <- diam %>% mutate(sq = x * y * z)
x <- diam %>% mutate(sq = x * y * z, pl = sq^2)
x <- diam %>% mutate(sq = x * y * z, pl = log(x + y + z))
# можно изменить существующую переменную
x <- diam %>% mutate(carat = carat*10)
x <- diam %>% mutate(depth = ifelse(depth < 60, 0, depth))#if true will write 0, false
#will write true

# group_by() и summarise()
x <- diam %>% group_by(color)
x <- diam %>% group_by(color) %>% mutate(mean = mean(carat), count = n())

x <- diam %>% group_by(color) %>%  
  summarise(mean = mean(carat), count = n())

library(dplyr)

# Задание
# 1. Сохранить дата фрейм airquality в переменную air
air <- airquality
# 2. Добавьте колонку ozone_square, значения которой будут равны озону в квадрате
x<- air%>%mutate(ozone_square = Ozone^2)%???%V
# 3. Добавьте колонку mean_temp, которая будет равна среднему значению температуры в каждый месяц
x<- air%>%group_by(Month)%>%summarize(mean_temp = mean(Temp), count = n())
# 4. Сделайте небольшую таблицу сгруппированую по днем, и для каждого дня посчитайте максимальное значение озона. 
x<- air%>%group_by(Day)%>%summarize(max = max(Ozone))

#swirl block dplr

# Пример с GamingData
dt <- read.csv('Documents/Study/Method/Lectures/5 weeks/Data/vgsales.csv', stringsAsFactors = F)
str(dt)
head(dt)

# Вопрос 1. Самая популярная платформа по количеству игр каждый год
dt %>% group_by(Year, Platform) %>% summarise(count = n()) %>% top_n(1)
# Вопрос 2. Самая прибыльная платформа каждый год
dt %>% group_by(Year, Platform) %>% summarise(total = sum(Global_Sales)) %>% top_n(1) %>% View()
# Вопрос 3. Топ 10 издателей, который выпускают больше всего игр
dt %>% group_by(Publisher) %>% summarise(count = n()) %>% top_n(10) %>% arrange(desc(count))

# Задание
# Сделать анализ по жанрам с помощью dplyr.
library(dplyr)
# Для тех кто хочет углубиться:
# swirl урок 1, 2 из Getting_and_Cleaning_Data


# Дополнительное доп задание:
# 1. Сохранить дата фрейм airquality в переменную air
air <- airquality
# 2. Создайте новую колонку с названием Dangerous.
x<- air %>% mutate(Dangerous = ifelse(Ozone>mean(Ozone, na.rm = T),'y','n'))
#Она должна содержать 'yes' если в этот день 
#значение Ozone выше среднего и 'no' если ниже или равно среднему




















air <- airquality
sapply(air, function(x) sum(is.na(x)))

# Заполнить NA нулями
air$Ozone[is.na(air$Ozone)] <- 0

# Заполнить NA средним по колонке
air <- airquality
air$Ozone[is.na(air$Ozone)] <- 0

air <- airquality
library(dplyr)
air <- air %>% replace_na(list(Ozone = 0))

# Практические задания

# 1. Считать датафрейм находящийся по ссылке - https://raw.githubusercontent.com/jokecamp/FootballData/master/UEFA_European_Championship/Euro 2012/Euro 2012 stats TEAM.csv
# Этот датасет об участниках чемпионата европы по футболу 2012
library(dplyr)
soccer <- read.csv('https://raw.githubusercontent.com/jokecamp/FootballData/master/UEFA_European_Championship/Euro 2012/Euro 2012 stats TEAM.csv',
               stringsAsFactors = F,
               encoding = 'UTF-8',  header=T, na.strings=c("","NA"))

# 2. Сколько команд учавствовало в Евро 12
# Ответ - 16
nrow(soccer)
# 3. Сколько колонок в датасете?
# Ответ - 35
ncol(soccer)
# 4. Выберите колонки Team, Yellow Cards and Red Cards и отсортируйте по Red Cards и Yellow Cards так что бы сверху таблицы оказались команды с наибольшим количеством
# Какие первые три команды?
# Ответ - Greece, Poland, Republic of Ireland
football <- soccer %>%select(Team, Yellow.Cards, Red.Cards)%>%arrange(desc(Red.Cards), desc(Yellow.Cards))
# 5. Посчитайте общее количество голов для команд England, Italy and Russia
# Ответ - 16
goal <- soccer%>%filter(Team%in%c('England', 'Italy', 'Russia'))
sum(goal$Goals)
# 6. Сгруппируйте команды по наличию краной карточки (Red.Cards). Посчитайте среднее количество овсайдов (Offsides) для команд которые получали красную карту и не получали.
# Ответ - Команды которые получали - 8.67, Которые не получали - 8
gred <- soccer %>%
        group_by(Red.Cards)%>%summarize(mean_off = mean(Offsides))
# Доп
# 7. Выберите команды которые забили больше 6 голов. Какой средний Shooting Accuracy у этих команд?
# Ответ - 51.85
teams <- soccer%>%select(Team, Goals,Shooting.Accuracy)%>%filter(Goals>6)
mean(as.numeric(teams$Shooting.Accuracy))
as.numeric(teams$Shooting.Accuracy)
class(teams$Shooting.Accuracy)
soccer$Shooting.Accuracy <- gsub('%', '', soccer$Shooting.Accuracy)
# Доп
# 8. Выберите только команды начинающиеся на букву G. Сколько таких команд?
# Ответ - 2
gstart <- soccer%>%grep('^G', soccer$Team, value=T)
# 9. Загрузите дата фрейм по ссылке - https://raw.githubusercontent.com/justmarkham/DAT8/master/data/drinks.csv
# Это данные с потреблением алкоголя в разных странах
a<- read.csv('https://raw.githubusercontent.com/justmarkham/DAT8/master/data/drinks.csv', stringsAsFactors = F)
# 10. Проверьте, есть ли NA в таблице
nanu<-sapply(a, function(x)sum(is.na(x)))
# 11. Заполните NA  
library(dplyr)
a$continent[is.na(a$continent)] <- 0
a_sorted <- a %>% replace_na(list(continent = "Not"))
# 11. Какой континент пьет больше пива в среднем? 
# Ответ - EU
rehou <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings))
# 12. Для каждого континента посчитайте максимальное, минимальное и среднее потребление вина. На каком континенте среднее потребление минимально?
# Ответ - AS
rehou <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings),
                                              max = max(beer_servings),
                                              min= min(beer_servings))
a<-rehou$continent[rehou$mean == min(rehou$mean)]
# 13. Посчитайте среднее потребление каждого вида алкоголя, для каждого континента
rehou <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings))