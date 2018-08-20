#Basic stats

x=ceiling(rnorm(10000, mean=60, sd=20))
mean(x)
median(x)
#there is no mode function for mode stats
table(x)
sort(table(x), decreasing = T)
library(modeest)
mlv(x,method = 'shorth')

mlv(x,method ='shorth')

quantile(x)
quantile(x,seq(.1,1,by=.1)) #decile
quantile(x,seq(.01,1,by=0.01))#percentile
quantile(x,seq(.25,1,by=0.25)) #quartile

install.packages("e1071")
plot(density(x))
e1071::skewness(x)
e1071::kurtosis(x)
sd(x)
var(x)
cov(women$weight, women$height)
cor(women$height, women$height)

stem(x)

#Freq table
install.packages("fdth")
