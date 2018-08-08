add <- function(a,b)
{
  c = a + b
  return(c)
}

add(0,1)
add(1,add(2,add(3,add(4,5))))

square <- function(x)
{
  return(x^2)
}
square(4)

volume <- function(a,b,c)
{
  return(a*b*c)
}
volume(1,2,3)

m <- matrix(c(1,2,3,4,5,6,7,8,9),3)
m


# 1-Rows ; 2-Colums
m
apply(m,1,sum)
apply(m,2,sum)

l <- list(id=c(1,2,3,4,5),names=c('a','b','c','d','e'),color=c('red','green','blue','pink','yellow'))
l
plot(l$id)

# only for numeric list
mlist <- list(a=c(1,2,3),b=c(1,2),c=c(2,1,3,1,3))
lapply(mlist,sum)
lapply(mlist,mean)
lapply(mlist,square)
lapply(mlist,cumsum)
sapply(mlist,sum)
sapply(mlist,cumsum)
sapply(mlist,square)
sapply(mlist,mean)


id <- c(1:5)
age <- seq(5,25,5)
age
gender <- c('M','F','F','M','F')
gender
y <- data.frame(id,age,gender)
View(y)
tapply(age,gender,mean)
tapply(age,id,sum)
tapply(id,gender,sum)

library()
