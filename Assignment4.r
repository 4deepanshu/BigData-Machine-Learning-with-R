library(rpart)
library(rpart.plot)
library(caTools)

cherry <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/cherry.csv")
summary(cherry)
split = sample.split(cherry ,SplitRatio = 0.80)
train = subset(cherry, split == TRUE)
test = subset(cherry, split == FALSE)
tree <- rpart(Volume~.,data= train,method="class")
tree
summary(tree)
rpart.plot(tree,type=3,extra=101)
pred1 <- predict(trees ,test ,type="class")
confmat1 = table(cherry[,3],pred1)
confmat1
accuracy1 = sum(diag(confmat1))/nrow(test)
accuracy1
model <- glm(Volume~. ,data = train ,family = "binomial")
model
pred2 <- predict(model ,test[,-3] ,type = "response")
pred2
confmat2 = table(cherry[,3],pred2)
confmat2
accuracy2 = sum(diag(confmat2))/nrow(test)
accuracy2
# comparing accuracy --
diffacc=accuracy1 - accuracy2
diffacc



library(caTools)
cherry <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/cherry.csv")
summary(cherry)
split = sample.split(cherry ,SplitRatio = 0.80)
train = subset(cherry, split == TRUE)
test = subset(cherry, split == FALSE)
model <- glm(Volume~. ,data = train ,family = "binomial")
model
pred <- predict(model ,test[,-3] ,type = "response")
pred
confmat = table(cherry[,3],pred)
confmat
accuracy = sum(diag(confmat))/nrow(test)
accuracy
