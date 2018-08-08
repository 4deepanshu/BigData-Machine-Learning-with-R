
#  Total Sum of Squares = Sum Of Squares errors + Sum of Squares Regression
#  SST = SSE + SSR
#  SST = Sigmasum(observed values-mean of values) ^2
#  SSE = SigmaSum(observed values - predicted values) ^2
#  SSR = SigmaSum(prediccted values - mean of values) ^2
#  R^2 = SSR/SST  ;  Range of R^2 ---   0 <= R^2 <= 1
#  R^2 = coefficient of determination ; WE should try to keep it as high as possible



visitors <- c(1,2,3,4,5,6,7,8,9,10)
n_burger <- c(5,10,12,22,28,31,38,42,48,75)
burger <- data.frame(visitors,n_burger)
summary(burger)
plot(burger,col="red")

burgerReg = lm(burger$n_burger ~ burger$visitors)  # training smodel    ;;;   lm(target ~ predictors)  ==>  ( y Vs x )
burgerReg
abline(burgerReg,col = "green")
summary(burgerReg)
summary(burgerReg)$r.squared   # R^2 close to 1

predictsales <- predict(burgerReg , burger)
predictsales

results <- cbind(burger,predictsales,error = n_burger-predictsales)
results
  
