library(caTools)

gpa <- seq(7,10,0.15)
gpa
gre <- c(340,333,280,270,310,312,274,330,260,318,311,300,190,220,320,265,328,295,308,336,340)
gre
g <- data.frame(gpa,gre)
g
pass <- c(1,1,0,0,0,0,0,1,0,1,1,1,0,0,1,0,1,0,1,1,1)
admit <- cbind(g,pass)
admit

model <- glm(pass~gre+gpa,data = admit, family = "binomial")
summary(model)
pre <- predict(model,admit[,-3], type="response")
pred = round(pre)           # AIC should be low
pred              

result <- data.frame(Actual = admit[3],Predicted = pred)
result

confmat= table(admit[,3],pred)
confmat
#  the sum of values of left diagonal should be high

accuracy= sum(diag(confmat))/nrow(admit)
accuracy

