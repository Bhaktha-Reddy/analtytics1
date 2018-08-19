# Data Structures

#Vectors
v1 = 1:1000  #create vector from 1 to 1000
v2 = c(1,4,5,10) #create specfic set of numbers
class(v1) #determining v1 is integer numbers
class(v2)
v3 = c('a', 'shyam','Meghana')
v3 #print the vector
class(v3)
v4= c(TRUE, FALSE, T, F, T)
class(v4)
#summary on vectors
mean(v1)
median(v1)
sd(v1)
hist(women$height) #histogram
v2
v2[v2>=5]
x = rnorm(60, mean = 60, sd=10)----  # random normal distrbution
x
plot(x)
hist(x)
plot(density(x))
abline(v=60)
#rectangles amd density together
hist(x, freq = F)
lines(density(x))
hist(x, breaks = 10, col = 1:10)
length(x)
sd(x)

?sample
x1 = LETTERS[5:20]
x1


set.seed(1234)  #whereever sampling is happening put set seed if u want same pattern to be displayed
y1 = sample(x1)
y1
set.seed(5)
(y2= sample(x1, size=5)) # it will assign the values and print it

(gender = sample(c('M', 'F'), size=500000,replace =TRUE, prob=c(.2,.8)))
(t1= table(gender)) # create a table based on the distribution in gender
prop.table(t1)  # divide values in percentage form
pie(t1)
barplot(t1, col=1:2, horiz = T)
#matrix


#array