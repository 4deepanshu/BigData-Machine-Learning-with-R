
file <- read.csv("D:/Sample.csv")
summary(file)
head(file)
str(file)
boxplot(file)
cars <- mtcars
boxplot(cars)
plot(cars)
str(cars)
cars
summary(cars)
plot(cars$disp,cars$carb)
plot(cars)

plot(file$X.213.25)  # we have to use this if we dont use attach()

attach(file)  # seperates all colums and attaches them one by one
plot(X1)
mean(X3)
mean(X3,na.rm=TRUE)   # It is used when data has some empty, nonfilled or NA values  
x1 <- na.omit(X1)     # Deletes the NA or na values
barplot(X3)
boxplot((X3))
detach(file)

file$X.213.25 <- as.factor(file$X.213.25)
?read.csv
values <- c(1,7,3,9,6,7,6,7,3,4,1,5,2,2,10,2)
plot(values,type='o')
plot(values,type='s',col='red')
plot(values,type='b',main="GRAPH",col.main="Red",xlab="Index",ylab="Values",col.lab="Green",col=rgb(0,0.43,1))
barplot(values,type='b',main="GRAPH",col.main="Red",xlab="Index",ylab="Values",col.lab="Green",col=rgb(0,0.43,1),font.main=7)
boxplot(values,type='b',main="GRAPH",col.main="Red",xlab="Index",ylab="Values",col.lab="Green",col=rgb(0,0.43,1),font.main=7)

#       ABOUT  BOXPLOT !
#
#   Lowermost line is the Minimum value
#   Uppermost line is the Maximum value
#   Dots above and below the Min and Max lines are called Outliers
#   Line running across the middle of the box is Median
#   Lowermost line of the box is the First quartile 
#   Uppermost line of the box is the Third quartile
#   Interquartile range(IQR) = 3rd - 1st
#   0th = 0 ; 1st = 0.25 ; 2nd = 0.50 ; 3rd = 0.75 ; 4th = 1.00  ; 2nd =median
#   Outlier 1 = 1st - IQR*1.5 
#   Outlier 2 = 3rd + IQR*1.5
#   


id <- 1:5
age <- c(12,73,23,5,42)
name <- c("Joey","Monica","Chandler","Ross","Phoebe")
dt <- data.frame(id,name,age)
dt
plot(dt$id,dt$name)
plot(dt$age,name.arg=dt$name)
pie(id,name)
