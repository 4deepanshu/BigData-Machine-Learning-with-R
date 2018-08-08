a<- c(1,2,3,4,5)  #c=concatination
b<- c(1,2,1,2,1)
min(a)
max(a)
sort(a,TRUE)

a+b

a<- c(1:1000)
a

x <- 1:10
mean(x)
median(x)
sum(x)
cumsum(x)
length(x)

d<- rep(3,10)
d
d+1
class(d)

f<- seq(5,10,2)
f




p<-c(1,8,3,5,1,0)
q<-rep(p,times=4)
q
q<-rep(p,each=2)
q

r<-c(p,q,1,4) #concatination of vectors
r
sqrt(r)
r<5
any(r<5)
all(r>5)
r[5] # indexing starts from 1 not 0
r
r[4:6]<0


a<-c("H","e","l","l","0")
a

f<- c("20",10,"30")
as.integer(f)
as.character(f)



# list can have dataframes, characters ,numbers and list itself in them

x <- list(name="Deepanshu",age=19)
x
