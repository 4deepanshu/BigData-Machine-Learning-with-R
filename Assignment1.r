dry <- c(77,93,93,68,88,75,100)
sum(dry)
length(dry)
mean(dry)
sum(dry)/length(dry)
sort(dry)
median(dry)
sd(dry)
var(dry)
sd(dry)^2
sum((dry-mean(dry))^2)/length(dry)-1
min(dry)
max(dry)
summary(dry)

x<- c(3,6,8)
x
x/2
x^2
sqrt(x)
x[2]
x[c(1,3)]
x[-3]
y<- c(2,5,1)
y[x==6]
y
x-y
x*y
4:10
seq(2,3,by=0.1)
rep(x,each=4)


height <- c(180,165,160,193)
weight <- c(87,58,65,100)
bmi= weight/(height/100)^2
bmi
logs <- log(bmi)
logs
weightsless <- weight[bmi>25]
weightsless

celcius <- c(23,27,19)
fahrenheit <- (celcius*(9/5))+32
fahrenheit

R <- c(2.27,1.98,1.69,1.88,1.64,2.14)
H <- c(8.28,8.04,9.06,8.70,7.58,8.34)
V <- pi/3*((R^2)*H)
V

mean(V)
median((V))
sd(V)
mean(H<8.5)

sqrt(16)
16^0.5
43

log10(1000)
log(1000)
exp(log(1000))
log2(64)

?log

pi
round(pi)
round(pi,digits=4)
trunc(pi)

sin(pi)
cos(pi)
sin(pi/2)
cos(pi/2)


