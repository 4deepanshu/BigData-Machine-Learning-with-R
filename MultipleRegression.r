file <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/cherry.csv")
file
summary(file)

plot(file$Girth,file$Height,file$Volume)
model <- lm(Volume~Girth+Height , data = file)
model <- lm(Volume~. , data = file)
plot(model)

pred <- predict(model,file[,-3])
pred

dt <- data.frame(Actual = file[,3],Predicted = pred)
dt
