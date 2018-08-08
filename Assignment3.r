cherry <- read.csv("D:/Introduction_Data_Science_Machine_Learning/Introduction_Data_Science_Machine_Learning/For students/cherry.csv")
summary(cherry)

plot(cherry$Girth,cherry$Volume, col= "blue")

linreg = lm(Volume~Girth , data = cherry)
linreg
linreg$coefficients

abline(linreg , col = "red")

confint(linreg)


fitted(linreg)
residuals(linreg)
plot(fitted(linreg),residuals(linreg))
rstandard(linreg)
qqnorm(rstandard(linreg))
abline(0,1)
par(mfrow=c(2,2))
plot(linreg)

mulineareg <- lm(log(Volume)~log(Girth)+log(Height), data = cherry)
mulineareg
plot(mulineareg)
