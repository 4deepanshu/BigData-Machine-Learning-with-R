library(rpart)
library(rpart.plot)
library(caTools)

file <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/titanic.csv")
summary(file)

model <- rpart(Survived ~ Sex + Age, data= file , method= "class")
model
summary(model)

tree = rpart.plot(model,type=3,extra=101)
tree
rpart.plot(model,type=3,extra=101)


# Using iris dataset
file = iris
summary(file)

split = sample.split(file ,SplitRatio = 0.8)
train = subset(file,split == TRUE)
test = subset(file,split == FALSE)

trees <- rpart(Species~. ,data=train, method = "class")
trees
rpart.plot(trees,type=3,extra=101)

pred <- predict(trees,test, type ="class")
pred

confmat = table(test[,5],pred)
confmat
accuracy = sum(diag(confmat))/nrow(test)
accuracy

iris
