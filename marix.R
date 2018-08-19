#matrix----
(m1=matrix(1:24,nrow=4))
(m2=matrix(1:24,nrow=4, byrow = T))
(m1=matrix(1:24,ncol =4, byrow= T))
x=runif(60,60,100)
plot(density(x))
x
?runif
#round, trunc, ceiling, floor
(x=trunc(runif(60,60,100)))
plot(density(x))
(m4 = matrix(x, ncol = 6))
colSums(m4) #sums of all teh columns
rowSums(m4) #sum of all rows
rowMeans(m4) #mean of a row
colMeans(m4) # mean of columns
(m4[m4>67 & m4 <86])
m4
#before comma row number and after comma column number
m4[10,]
m4[9:10]
m4[7:10, c(1,2,4)]

rowSums(m4[7:10, c(1,2,4)])
