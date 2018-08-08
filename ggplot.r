# Data Visualization using ggplot -
# install ggplot2 by : 
# install.packages("ggplot2")
# library(ggplots) : loads ggplot2


library(ggplot2)

id <- 1:5
age <- c(12,73,23,5,42)
name <- c("Joey","Monica","Chandler","Ross","Phoebe")
dt <- data.frame(id,name,age)
dt
?ggplot
ggplot(data=dt,aes(x=name,y=age),colour = 'red')+geom_point()
ggplot(data=dt,aes(x=name,y=age))+geom_point()+ggtitle("GRAPH")+xlab("Name")+ylab("Age")
ggplot(data=dt,aes(x=name,y=age))+geom_bar(stat = "identity",fill = "skyblue")

mycars <- mtcars
p <- ggplot(data=mycars,aes(mpg,hp))
p + geom_area(aes(colour = factor(cyl)))
p + geom_point(aes(colour= factor(cyl)))
p + geom_point(aes(size = qsec))
p + geom_point(aes(colour = factor(cyl),size = qsec))
p + geom_point(aes(shape = factor(cyl))) + scale_shape(solid = FALSE)
p + geom_point(aes(color=cyl))

