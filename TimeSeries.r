# Seasonal
# Trend
# Random
# Observed


mydata <- scan("D:/forstudents - 17th  18th Feb Sessions (1)/forstudents-day9and10/nybirths.dat",skip=0)
mydata
summary(mydata)

mydatats <- ts(mydata,frequency = 12,start = c(1946,1))
mydatats
summary(mydatats)

plot(mydata)
plot(mydatats)
plot.ts(mydata)
plot.ts(mydatats)

decomp <- decompose(mydatats)
decomp
plot(decomp,col="blue")



library(forecast)
file <- scan("D:/forstudents - 17th  18th Feb Sessions (1)/forstudents-day9and10/rainfall.dat",skip=1)
summary(file)
filets = ts(file,start=c(1813,1))
filets
summary(filets)
start(file)
start(filets)
end(filets)
plot(filets,col="green")

model <- HoltWinters(filets,beta=FALSE,gamma=FALSE)
model
plot(model)
# alpha should be close to 0
# lesser the value of alpha more the accuracy

pred <- forecast(object=model,h=10)
pred
plot(pred)

# EXPONENTIAL SMOOTHING


# Holts work well usually when there is trend but no seasonality
# HoltsWinter work well usually when trend and seasonality both are not there 
# ARIMA is used whe  all the components are there
# HoltsWinter(data ,beta = FALSE ,gamma = FALSE)     ----> HoltsWinter
# HoltsWinter(data ,gamma = FALSE)                  ----> Holts

myfile <- scan("D:/forstudents - 17th  18th Feb Sessions (1)/forstudents-day9and10/skirts.dat", skip =5)
start(myfile)
summary(myfile)

myfilets <- ts(myfile,start= c(1866))
summary(myfilets)
plot(myfilets,col="green")

model <- HoltWinters(myfilets, gamma = FALSE)
model
summary(model)
plot(model)

model <- HoltWinters(myfiles, beta = FALSE , gamma = FALSE)
model
summary(model)
plot(model)

myforecast <- forecast(object = model, h=5)
myforecast
plot(myforecast)

myforecast <- forecast(object = model , h=5)
plot(myforecast)


library(expsmooth)
data()   # It will show all the data sets available 

data("ausgdp")
ausgdp
summary(ausgdp)
head(ausgdp)
class(ausgdp)   # Time series data set
# WE can use this data file for further experimenting


#  ARIMA = Autoregressive Integrated Moving Average
#  Works almost for all models   ( Its a generic method )
#  ARIMA(p,d,q)
#  Example :
#  ARIMA(2,0,1) means 2 coponents of AR ,0 components of differencing and 1 commponent of MA are present
#  ARIMA(3,0,1) = (a1)(yt-1)+(a2)(yt-2)+(a3)(yt-3)+(b1)(et-1)+(b2)(et-2)
#  p = Autoregression , q = Moving Average and d = Differencing : flatening of trend

skirts <- scan("D:/forstudents - 17th  18th Feb Sessions (1)/forstudents-day9and10/skirts.dat" ,skip= 5)
summary(skirts)
plot(skirts)

tskirts <- ts(skirts,start = c(1866))
plot(tskirts,col="red")

dskirts <- diff(tskirts,differences = 1)
plot(dskirts,col="green")

ddskirts <- diff(dskirts,differences = 1)
plot(ddskirts,col="blue")

dddskirts <- diff(tskirts,differences = 2)
plot(dddskirts,col="grey")

iskirts <- diff(tskirts, differences = 40)
plot(iskirts,col="red")

model1 <- auto.arima(ddskirts)
model1

model2 <- auto.arima(tskirts)
model2
#  model 2 requires differencing 2 times

auto.arima(ddskirts, ic="aic",trace = TRUE)
myforecast <- forecast(model1,h=10)
plot(myforecast)
# the lower the value of AIc, the better

myforecast <- forecast(model2,h=10)
plot(myforecast)

mydata <- lynx 
summary(mydata)
