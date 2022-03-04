x=1:100
size=40
sample(x, size, replace=F)
sam1<-sample(x, size, replace=F)
##1-1
mat<-matrix(sam1, nrow = 5, ncol = 8)
mat
##1-2
mat2<-mat[c(2,3),]
##1-3
mat3<-mat[,c(1,4,7,8)]
##1-4
mat_row7<-mat[,7]
mean(mat_row7)
var(mat_row7)
##2
y=1:20
size=1
sample(y, size, replace=F)
sam2<-sample(y, size, replace=F)
if(sam2 >= 10){print ("p")} else{print ("np")}
##3
z=1:20
size=8
sample(z, size, replace=F)
sam3<-sample(z, size, replace=F)
for (i in 1:8) {if (sam3[i]>= 10) {print("p")}
  else {print("np")}
}
##4-1
A<-rep(1:4,3)
B<-rep(1:3,rep(4,3))
##4-2
sam4<-cbind(A,B)
sam4
##5-1
sam4[c(2,4,6,8,10,12),1]
##5-2
sam4[c(1,2,3),c(1,2)]
##6
for(i in seq(from=1,to=58,by=3)) 
{ if (i%%2==0){print(paste("The number",i,"is even"))} 
else {print(paste ("The number",i,"is odd"))}}
##7
for (a in 2:4) {print( {a+sqrt(a^2-4*log(17)/25)} /(2/25))}
for (a in 2:4) {print( {a-sqrt(a^2-4*log(17)/25)} /(2/25))}
##8-1
sam81<-seq(from=1, to=136, by =5 )
##8-2
sam82<-seq(from=1, to=136, length=20)
##8-3
if(length(sam81)>length(sam82)) {print ("okay")} 
##9
sam9<-matrix(c(5,3,2,7),ncol =2) 
sam9%*%c(10,6)
##10
install.packages("pixmap")
library(pixmap)
logo<- read.pnm(system.file("pictures/logo.pgm",package = "pixmap")[1])
plot(logo)
dim(logo@grey)
logo@grey[15:60,20:80]<-0
plot(logo)


