#  install.packages("maps")
library(maps)
library(ggplot2)
ggplot() + borders(database = "world")
dt <- read.csv("D:/USA map.csv")
dt
ggplot(data = dt) + geom_point(aes("Location","Location"))+ borders(database = "usa") + ggtitle("USA Map")
