
cherry <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/cherry.csv")
summary(myfile)

dim(cherry)
attach(cherry)
plot(Volume,Girth,col='green')
model <- lm(Volume~Girth, data = cherry)
abline(model)
summary(model)

scherry <- cherry[,-3]
scherry

pred <- predict(model,scherry)
pred

dt1 <- data.frame(cherry ,error = cherry$Volume - pred)
dt2 <- data.frame(dt1,predicted = pred)
dt2
plot(dt2$predicted,dt2$Volume)
 