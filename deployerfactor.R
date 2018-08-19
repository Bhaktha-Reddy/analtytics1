data(iris)
install.packages("MASS")
install.packages("dplyr")
#dplyr
library(dplyr)
students %>% group_by(course,gender) %>% summarise(meanmarks1= mean(marks1),min(marks2),max(marks2)) %>% arrange(desc(meanmarks1))
students %>% arrange(marks1)
students %>% arrange(desc(marks1)) %>% arrange(desc(marks2)) %>% filter(gender== 'Male') %>% top_n(5)

(Test1=sample_frac(students,.10, replace = TRUE))
(Test2= sample_n(students,5,replace=TRUE))
students %>% sample_frac(.1) %>% arrange(course) %>% select(name,gender)
students %>% sample_n(2)
students %>% arrange(course,gender,desc(marks1)) %>% select(course,gender,marks1)
students %>% group_by(course,gender) %>% summarise(meanmarks1= mean(marks1),min(marks2),max(marks2)) %>% arrange(desc(meanmarks1))


#factor
names(students)
students$gender = factor(students$gender)
summary(students$gender)
summary(students$course)
students$course = factor(students$course, ordered = T,levels = c('FPM','MBA','BBA'))
summary(students$course)
students$grades = factor(students$grades, ordered = T,levels = c('C','B','A'))
summary(students$grades)
students$grades
table(students$grades)
barplot(table(students$grades))
students
write.csv(students,'./data/iimtrichy.csv')
students3=read.csv(file.choose())
head(students3)
students3= students3[,-1]
head(students3)
