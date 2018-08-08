mydata <- read.csv("D:/forstudents - 17th  18th Feb Sessions (1)/forstudents-day9and10/tractorsales.csv")
View(mydata)
myfile <- mydata[,-1] 
summary(myfile)

myfilets <- ts(myfile,frequency = 12)
myfilets
plot(myfilets,col="red")

filedecomp <- decompose(myfilets)
plot(filedecomp,col="blue")

library(forecast)
modelH <- HoltWinters(myfilets,beta=FALSE,gamma=FALSE)
modelH
plot(modelH)

pred5 <- forecast(object = modelH,h=5)
pred5
plot(pred5)

pred10 <- forecast(object = modelH,h=10)
pred10
plot(pred10,col="green")

modelA <- auto.arima(myfilets)
modelA

auto.arima(myfilets,ic="aic",trace = TRUE)

mydiff <- diff(myfilets,differences = 1)
mydiff
plot(mydiff,col="red")

pred <- forecast(object = modelA,h=5)
pred
plot(pred,col="dark grey")
 
pred <- forecast(object = modelA,h=10)
pred
plot(pred,col="green")
