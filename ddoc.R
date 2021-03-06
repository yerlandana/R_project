

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
r <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings))
# 12. ��� ������� ���������� ���������� ������������, ����������� � ������� ����������� ����. �� ����� ���������� ������� ����������� ����������?
# ����� - AS
r <- a %>%group_by(continent)%>%summarize(mean = mean(beer_servings),
                                              max = max(beer_servings),
                                              min= min(beer_servings))
v<-r$continent[r$mean == min(r$mean)]
# 13. ���������� ������� ����������� ������� ���� ��������, ��� ������� ����������
r <- a %>%group_by(continent)%>%summarize(mean_beer = mean(beer_servings),
                                          mean_spirit = mean(spirit_servings),
                                          mean_wine = mean(wine))








# ������ 1. ����� ���������� ��������� �� ���������� ��� ������ ���
dt %>% group_by(Year, Platform) %>% summarise(count = n()) %>% top_n(1)
# ������ 2. ����� ���������� ��������� ������ ���
dt %>% group_by(Year, Platform) %>% summarise(total = sum(Global_Sales)) %>% top_n(1) %>% View()
# ������ 3. ��� 10 ���������, ������� ��������� ������ ����� ���
dt %>% group_by(Publisher) %>% summarise(count = n()) %>% top_n(10) %>% arrange(desc(count))

# �������
# ������� ������ �� ������ � ������� dplyr.
#jenre