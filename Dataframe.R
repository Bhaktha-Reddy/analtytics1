#data.frame
#roll no, name,gender,course,marks1,marks2,grades
(rollno = 1:60)
student1, student2
(name=paste('student1',1:60,sep='-'))# seperator
name[1:20]
name[c(20,45,32)]
#[56] position and corresponding value and in r starts from 1
name[-1]
name[-c(50:60)]
rev(name)
name[60:1]
name[-c(10:20, 45:60)]
(gender=sample(c('Male','Female'), size = 60, replace=T,prob = c(.3,.7)))
(course=sample(c('BBA','FPM','MBA'), size = 120, replace = T,prob = c(.1,.2,.7)))
(marks1=ceiling(rnorm(60, mean = 65, sd=7)))
(marks2=ceiling(rnorm(60, mean = 65, sd=11)))
(grades = sample(c('A','B','C'), size = 60, replace = T))
(grades = sample(c('A','B','C'),size = 60,replace = T))
students = data.frame(rollno,name, gender, course, marks1, marks2, grades, stringsAsFactors = F)  
class(students)
summary(students)
students[, c('name')]
students[students$gender== 'Male', c('rollno', 'gender','marks1')]
students[students$gender== 'Male' & students$grades == 'C', c('rollno', 'gender','marks1')]
students[students$marks1 > 55 & students$marks1 < 75, c('name','marks1')]
students$gender
(t1=table(students$gender))
(barplot(table(students$course), ylim=c(0,120),col=1:3))
text(1:3,table(students$course)+5,table(students$course))
str(students)
nrow(students)
dim(students)
head(students)
tail(students)
head(students,n=7)
#
#avg marks scored by eaxh gender in marks1
#gender, marks1
aggregate(students$marks1, by=list(students$gender), FUN=mean)
#data will be different because randomization,normal distribution
aggregate(students$marks2, by=list(students$course), FUN=max)
aggregate(students$marks1, by=list(students$course, students$gender),FUN=mean)
aggregate(students$marks1, by=list(students$course, students$name,students$gender),FUN=mean)
