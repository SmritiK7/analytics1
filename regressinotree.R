#Decision Trees

library(ISLR)
data(Carseats)
head(Carseats)
names(Carseats)
?Carseats
data = Carseats


#Libraries for Decision Tree
library(rpart)
library(rpart.plot)

#Model
decisiontree = rpart(Sales ~ . , data=data, method='anova' )  #considering all the variables other than sales
decisiontree
rpart.plot(decisiontree,cex=.8)

#this is large tree, so prune it: check cp
printcp(decisiontree)
prunetree = prune(decisiontree, cp=0.05)  #try changing cp's value to decrease levels
prunetree
rpart.plot(prunetree, nn=T)

#improve the plot
rpart.plot(prunetree, nn=T, cex=.8, type=4)


#https://www.datacamp.com/community/tutorials/decision-trees-R




# Decision Tree - Classification

path = 'https://raw.githubusercontent.com/thomaspernet/data_csv_r/master/data/titanic_csv.csv'
titanic <-read.csv(path)
head(titanic)
names(titanic)
data = titanic[,c(2,3,5,6,7)]
head(data)

#Decision Tree

library(rpart)
library(rpart.plot)
fit <- rpart(survived~., data = data, method = 'class')
fit
rpart.plot(fit, extra = 106, cex=.8,nn=T)

printcp(fit)
prunetree2 = prune(fit, cp=0.014)
rpart.plot(prunetree2, cex=.8, nn=T)
prunetree2
