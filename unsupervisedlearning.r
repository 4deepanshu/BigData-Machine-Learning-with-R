file <- iris
file
summary(file)
sepals <- file[,1:2]
petals <- file [,3:4]
plot(petals)
plot(sepals)

cluster2i <- kmeans(petals , centers = 2)
cluster2i
cluster3i <- kmeans(petals , centers = 3)
cluster3i
cluster4i <- kmeans(petals , center = 4)
cluster4i

cluster1ii <- kmeans(sepals, centers = 2)
cluster1ii
points(cluster2i$centers,col='red',pch=2)

result <- cbind(petals,cluster=cluster2i$cluster)
result


myfile <- iris
summary(myfile)
petals<- myfile[,3:4]
kres <- kmeans(petals,centers=3)
kres
plot(petals)
points(kres$centers,col="red",pch=2)
result <- cbind(petals,kres$cluster)
result
r <- cbind(result,species=myfile$Species)
r
table(r$species,r$kres$cluster)
print(kres$cluster)
print(kres$withinss)
print(kres$tot.withinss)
print(kres$betweenss)
print(kres$size)
print(kres$centers)
print(kres$iter)
print(kres$ifault)

library(datasets)
library(ggplot2)
ggplot(iris,aes(Petal.Length,Petal.Width,color = Species)) + geom_point()
set.seed(20)
iriscluster <- kmeans(iris[,3:4],3,nstart=20)
iriscluster


#  determining value of  ---
petals<- myfile[,3:4]
tw=numeric(15)
for( i in 1:15 )
{
  tw[i] = kmeans(petals,i)$tot.withinss
}
plot(tw,type = "l",col="green")

# choose the lowest value of k after which the value decrement is too small
# in this case value of k = 3
