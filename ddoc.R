

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
r <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings))
# 12. Для каждого континента посчитайте максимальное, минимальное и среднее потребление вина. На каком континенте среднее потребление минимально?
# Ответ - AS
r <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings),
                                              max = max(beer_servings),
                                              min= min(beer_servings))
v<-r$continent[r$mean == min(r$mean)]
# 13. Посчитайте среднее потребление каждого вида алкоголя, для каждого континента
r <- a %>%group_by(continent)%>%summarize(mean_beer = mean(beer_servings),
                                          mean_spirit = mean(spirit_servings),
                                          mean_wine = mean(wine))








# Вопрос 1. Самая популярная платформа по количеству игр каждый год
dt %>% group_by(Year, Platform) %>% summarise(count = n()) %>% top_n(1)
# Вопрос 2. Самая прибыльная платформа каждый год
dt %>% group_by(Year, Platform) %>% summarise(total = sum(Global_Sales)) %>% top_n(1) %>% View()
# Вопрос 3. Топ 10 издателей, который выпускают больше всего игр
dt %>% group_by(Publisher) %>% summarise(count = n()) %>% top_n(10) %>% arrange(desc(count))

# Задание
# Сделать анализ по жанрам с помощью dplyr.
#jenre