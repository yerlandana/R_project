 # ����������� ������ � RMarkdown
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

# �������� dplyr
# 1. ��������� ��������� adult
df <- read.csv('https://raw.githubusercontent.com/Yorko/mlcourse.ai/master/data/adult.data.csv', stringsAsFactors = F)

# 2. ���������� ������� � ��� ������� � �����
nrow(df)
ncol(df)
# 3. ��������� ���� �� � ��� NA
m<-sapply(df, function(x)sum(is.na(x)))
names(m)
# 4. ������� ������ � ������ (������� sex) ������������ � ���� ������ ������?
gender<-df%>%group_by(sex)%>%summarize(count =n())
# 5. ����� ������� ������� (������� age) ������?
female_age<-df%>%group_by(sex)%>%summarize(ma = mean(age))
# 6. ������ ���� ������� �������� (������� native-country)?
table(df$native.country)
# 7. ������ ������� �������� �������� ���, ��� �������� ����� 50K � ��� (������� salary) � ���, ��� �������� ����� 50K � ���?
df%>%group_by(salary)%>%summarize(s = mean(age))
# 8. ������ ��, ��� ����, ������� �������� ������ 50k, ����� ��� ������� ������ �����������? (������� education � Bachelors, Prof-school, Assoc-acdm, Assoc-voc, Masters ��� Doctorate)
tmp<-df%>%filter(salary=='>50K')
table(tmp$education)
# 9. �������� �������, ������������ � ����������� �������� �������� ��� ������ ���� (������� race) � ������� ����.
#������� ������������ ������� ������ ���� Amer-Indian-Eskimo � ������� ����� ������� ������� ���� Black
df%>%group_by(race, sex)%>%summarize(mean = mean(age),max = max(age),min = min(age))

# 10. ����� ���� ������ ���� �������������� ����� (>50K): ����� ������� ��� �������� ������ (������� marital-status)?
#�������� ������� ���, � ���� marital-status ���������� � Married (Married-civ-spouse, Married-spouse-absent ��� Married-AF-spouse), ��������� ������� ���������.
t<-df%>%group_by(marital.status,sex)%>%filter(salary=='>50K',sex=='male')%>%summarize(count=n())
tmp<-t%>%filter(martial.status %in%c('Married-AF-spouse',' Married-civ-spouse','Married-spouse-absent'))


mard<-df%>%filter(martial.status %in% c('Married-AF-spouse','Married-civ-spouse','Married-spouse-absent'))%>%nrow()

# 11. ����� ������������ ����� ����� ������� �������� � ������ (������� hours-per-week)? 
#������� ����� �������� ����� ���������� ����� � ����� ����� ��� ������� �������������� �����?
work <- df%>%filter(hours.per.week == max(hours.per.week)) %>%
  group_by(salary)%>%summarize(count = n())
# 12. ���������� ������� ����� ������ (hours-per-week) �������������� ���� � ����� (salary) ��� ������ ������ (native-country).
q<-df %>% group_by(native.country, salary)%>%summarize(mean=mean(hours.per.week))

