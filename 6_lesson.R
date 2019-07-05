 # Отображение таблиц в RMarkdown
  install.packages('DT')
  install.packages("lubridate")
library(DT)
library(dplyr)
df <- iris
m_length <- df %>% 
  group_by(Species) %>%
  summarise(mean_sepal = mean(Sepal.Length),
            mean_petal = mean(Petal.Length))
data.table(m_length)

# Практика dplyr
# 1. Загрузите датафрейм adult
df <- read.csv('https://raw.githubusercontent.com/Yorko/mlcourse.ai/master/data/adult.data.csv', stringsAsFactors = F)

# 2. Посмотрите сколько в нем колонок и строк
nrow(df)
ncol(df)
# 3. Проверьте есть ли в нем NA
m<-sapply(df, function(x)sum(is.na(x)))
names(m)
# 4. Сколько мужчин и женщин (колонка sex) представлено в этом наборе данных?
gender<-df%>%group_by(sex)%>%summarize(count =n())
# 5. Каков средний возраст (колонка age) женщин?
female_age<-df%>%group_by(sex)%>%summarize(ma = mean(age))
# 6. Какова доля граждан Германии (колонка native-country)?
table(df$native.country)
# 7. Каково средние значение возраста тех, кто получает более 50K в год (колонка salary) и тех, кто получает менее 50K в год?
df%>%group_by(salary)%>%summarize(s = mean(age))
# 8. Правда ли, что люди, которые получают больше 50k, имеют как минимум высшее образование? (колонка education – Bachelors, Prof-school, Assoc-acdm, Assoc-voc, Masters или Doctorate)
tmp<-df%>%filter(salary=='>50K')
table(tmp$education)
# 9. Выведите среднее, максимальное и минимаьлное значение возраста для каждой расы (колонка race) и каждого пола.
#Найдите максимальный возраст мужчин расы Amer-Indian-Eskimo и возраст самой молодой девушки расы Black
df%>%group_by(race, sex)%>%summarize(mean = mean(age),max = max(age),min = min(age))

# 10. Среди кого больше доля зарабатывающих много (>50K): среди женатых или холостых мужчин (колонка marital-status)?
#Женатыми считаем тех, у кого marital-status начинается с Married (Married-civ-spouse, Married-spouse-absent или Married-AF-spouse), остальных считаем холостыми.
t<-df%>%group_by(marital.status,sex)%>%filter(salary=='>50K',sex=='male')%>%summarize(count=n())
tmp<-t%>%filter(martial.status %in%c('Married-AF-spouse',' Married-civ-spouse','Married-spouse-absent'))


mard<-df%>%filter(martial.status %in% c('Married-AF-spouse','Married-civ-spouse','Married-spouse-absent'))%>%nrow()

# 11. Какое максимальное число часов человек работает в неделю (колонка hours-per-week)? 
#Сколько людей работают такое количество часов и каков среди них процент зарабатывающих много?
work <- df%>%filter(hours.per.week == max(hours.per.week)) %>%
  group_by(salary)%>%summarize(count = n())
# 12. Посчитайте среднее время работы (hours-per-week) зарабатывающих мало и много (salary) для каждой страны (native-country).
q<-df %>% group_by(native.country, salary)%>%summarize(mean=mean(hours.per.week))

