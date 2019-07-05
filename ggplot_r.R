# ggplot2
# Grammar of Graphics

# Hadley Wickham - создатель
# Думайте о действиях как о словах в предложениях (подлежащее, сказуемое и т.д)

# Нужно обозначить данные
# aesthetics - размеры, цвета, формы и т.д
# geoms - объекты (точки, линии и т.д.)

library(ggplot2)

tit <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv', stringsAsFactors = F)

ggplot(data = tit, aes(Fare, Age)) + geom_point()

g <- ggplot(data = tit, aes(Fare, Age))
summary(g)
g + geom_point()
g + geom_smooth()

ggplot(data = tit, aes(Fare, Age, color = Sex)) + 
  geom_point()

ggplot(data = tit, aes(Fare, Age, color = factor(Survived))) + 
  geom_point()

ggplot(data = tit, aes(Fare, Age)) +
  geom_point() + geom_smooth()

ggplot(data = tit, aes(Fare, Age)) +
  geom_point() + geom_smooth(method = 'lm')

#https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

# Гистограмма
# https://ggplot2.tidyverse.org/reference/geom_histogram.html
ggplot(data = tit, aes(Age)) + geom_histogram(bins = 40, fill = '#2bffbf', color ='black')

ggplot(data = tit, aes(Age)) + geom_histogram(bins = 40, fill = '#2bffbf', color ='black')
+facet.grid(.~Sex)

ggplot(data = tit, aes(Age, fill = factor(Survived))) + 
  geom_histogram(color = 'black') +
  scale_fill_manual(values = c('#9fd633', '#00ffc7')) + 
  guides(fill=TRUE) +
  ggtitle('Гистограма возраста') +
  ylab('Кол-во') + 
  xlab('Возраст')

# Barplot
# https://ggplot2.tidyverse.org/reference/geom_bar.html
ggplot(data = tit, aes(Embarked, fill= Embarked)) + 
  geom_bar() +
  facet_grid(cols = vars(Sex))

ggplot(data = tit, aes(Embarked, fill = Sex)) +
  geom_bar(position = "dodge") + 
  theme_minimal()

# Scatter plot
# https://ggplot2.tidyverse.org/reference/geom_point.html
library(dplyr)
ggplot(data = tit %>% filter(Fare < 100), aes(Fare, Age, color = factor(Survived))) +
  geom_point(aes(size = SibSp))

ggplot(data = tit, aes(Embarked, fill = factor(Survived))) +
  geom_bar()+
  coord_flip() +
  scale_fill_manual(values= c("#000000", "#E69F00"))



# Задания:
# 1. Отфильтруйте таблицу, так что бы колонка Fare была меньше 100
# 2. Постройте гистограмму по колонке Fare
# 3. Сделайте так что бы гистограмма была пораскрашена по колонке Sex
# 4. Сделайте заголовок - 'Гистографмма стоимости билетов'
# 5. Подпишите что у вас по оси X и Y
 ggplot(data=tit %>% filter(Fare<100), 
        aes(Fare, fill = Sex, label=  "Гистографмма стоимости билетов"))+
   geom_histogram(color= 'black')+
   ylab('Sex') + 
   xlab('Fare')
   # Задание
   # Покажите взаимосвязь колонки SibSp и Survived. Какой график для этого вы бы использовали?
   # Постройте график
   # Используйте разные цвета, что бы закрасить выживших и не выживших
   # Подпишите график и оси Х и Y
 library(ggplot2)
 library(dplyr)
 ggplot(data = tit %>%mutate(SibSp = ifelse(SibSp >= 2, '+2', SibSp)), aes(SibSp,  fill = factor(Survived)))+
   geom_bar(position = "dodge") + 
   ylab('Survived') + 
   xlab('SibSp')
 
   
 
 #график 1.2 класс они моложе или нет?
 
 # Покажите взаимосвязь колонки Pclass и Age. Какой график для этого вы бы использовали?
 ggplot(data=tit, aes(Age,fill=factor(Pclass)))+
   geom_bar(position = "dodge") + 
   ylab('Pclass') + 
   xlab('Age')
 
 #ggplot(data = tit,)
 
 
 
 