library(rpart)
install.packages('DMwR')
library(DMwR)
install.packages('rpart.plot')
library(rpart.plot)

dft <- read.csv('C://Users/dyerl/Desktop/Titanic dataset.csv')
Ttree<- rpart(Survived~Pclass+Sex+Age+SibSp+Parch+Fare+Embarked, data= dft, method="class", control = rpart.control(minbucket = 25))
prp(Ttree)
Ttree

PredictCART <- predict(Ttree, newdata = dft, type="class",control=rpart.control(minbucket=3))
PredictCART <- predict(Ttree, newdata = dft, type="class",control=rpart.control(cp=0.01)) //information gain

table(PredictCART, dft$Survived)

(515 + 251) / 891

install.packages('caret', dependencies = TRUE)
library(caret)
set.seed(17)
index <- sample(nrow(dft), size = 0.75 * nrow(dft))
index
train <- dft[index, ]
test <- dft[-index, ]


Ttree<- rpart(Survived~Pclass+Sex+Age+SibSp+Parch+Fare+Embarked, 
              data= train, method="class", control = rpart.control(cp = 0.05))
PredictCART <- predict(Ttree, newdata = train, type="class") 
table(PredictCART, train$Survived)
(375+170)/668


Predict_test <- predict(Ttree, newdata = test, type="class") 
table(Predict_test, test$Survived)
(121+61)/22


