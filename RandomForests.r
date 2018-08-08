library(randomForest)
forest <- randomForest(Species~.,data=iris,method="class",ntree=10)
forest
pred <- predict(forest,iris,type="class")
pred
confmat=table(iris$Species,pred)
confmat
