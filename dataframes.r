id <- 1:6
age <- c(29L,44L,72L,11L,46L,13L)                 # L -> declaring as int instead of numeric
name <- c("Monica","Chandler","Ross","Rachel","Phoebe","Joey")

x<- data.frame(id,name,age)
x

y<- data.frame(id,name,age)

nrow(x)
ncol(x)
dim(x)

names(x)[2]
names(x)[1]
names(x)[3]

head((x))
tail((x))

x$id
x$age
x$name
x[2]
x

x[2,8] 
x[2,3] 
x[2,2]      # print(  x[row,column]  )
x[0,2]
x[4,2]
x[2,4]

x[3,1:2]
class(x["age"])
class(x[,"age"])
x

x["age"]
x[2]
x["name"]

x[,"age"]
x["age"]

x+y      # We cannot do this

str(x)
head(x)
str(name)

is.numeric(age)
is.numeric(name)

total=x["age"]+x["id"]

total


x["age"]
age

