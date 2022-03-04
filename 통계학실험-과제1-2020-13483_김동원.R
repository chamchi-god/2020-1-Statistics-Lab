cdc<- read.table("C:/Users/r english/Desktop/r/cdc.txt", header = T)

##example2
summary(cdc$weight)
mean(cdc$weight)

##example3
plot(cdc$weight,cdc$wtdesire)
cor(cdc$weight,cdc$wtdesire)
##두 변수는 양의 상관관계를 갖는다.

##example4
wdiff<- c(cdc$wtdesire - cdc$weight)
summary(wdiff)
hist(wdiff)
boxplot(wdiff)
##전체적으로 wtdesire가 weight보다 작은 값을 보이며 outlier들이 여러개 존재하고있다.

##example5
hist(cdc$age)
hist(cdc$age,breaks=50)
hist(cdc$age,breaks=100)
