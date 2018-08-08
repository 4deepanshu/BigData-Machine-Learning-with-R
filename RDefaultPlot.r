library(tree)
mytree <- tree(iris$Species~.,iris)
plot(mytree)
text(mytree)

plot(mytree,type="uniform")
text(mytree,all=TRUE)

