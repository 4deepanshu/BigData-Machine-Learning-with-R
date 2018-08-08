library(caTools)
cherry <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/cherry.csv")
summary(cherry)
dim(cherry)

set.seed(100)
split = sample.split(cherry, SplitRatio = 0.8)
split

train <- subset(cherry,split == TRUE)
test <- subset(cherry , split == FALSE)
nrow(test)
nrow(train)
train
test

str(train)

plot(train$Volume,train$Girth, col="blue")

model <-lm(Volume ~ Girth, data = train)
abline(model,col="red")
summary(model)

pred <- predict(model ,test[,-3])
pred

data <- data.frame(Actual = test[,3] , Predicted = pred)
data

