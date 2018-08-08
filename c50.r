library(C50)
file <- iris
model = C5.0(Species~.,data=file,method="class")
model
summary(model)
model$predictors
res <- predict(model,file)
res
table(file[,5],res)
