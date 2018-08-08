myfile <- iris
myfile

plot(myfile[,1:2])
result1 = kmeans(myfile[,1:2] ,centers = 2)
result1
points(result1$centers,col="red",pch=2)
result2 = kmeans(myfile[,1:2] ,centers = 3)
result2
points(result2$centers,col="green",pch=2)
result3 = kmeans(myfile[,1:2] ,centers = 4)
result3
points(result3$centers,col="blue",pch=2)
result4 = kmeans(myfile[,1:2] ,centers = 5)
result4
points((result4$centers),col="yellow",pch=2)

sepals <- myfile[,1:2]
print("Withinss for k=2,3,4,5")
wn=kmeans(sepals,2)$withinss
wn
wn=kmeans(sepals,3)$withinss
wn
wn=kmeans(sepals,4)$withinss
wn
wn=kmeans(sepals,5)$withinss
wn

print("tot.withinss for k=2,3,4,5")
tw=numeric(4)
for(i in 2:5)
{
  tw[i] = kmeans(sepals,i)$tot.withinss
}
tw

