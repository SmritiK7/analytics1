# Data Structures


# Vectors----
v1 = 1:100 #create vector from 1 to 100
v2 = c(7,0,29,5,6)
v3 = 200:300
class(v1)
class(v2)
v3 = c('smriti','khare') #character
v3 #print vector
class(v3)
v4 = c(TRUE,FALSE,T,F) # all in caps, defining logical values
class(v4)

#summary on vectors----
mean(v1)
median(v1)
sd(v1)
var(v1)
hist(v1)
hist(women$height)
v2[v2>=5]

x = rnorm(60, mean=60, sd=10) # normal distribution to
x
plot(x)
hist(x)
plot(density(x))
abline(v=60)

#rectangles and density line
hist(x,freq=F)
lines(density(x))

hist(x,breaks=10,col=1:10)
length(x)
sd(x)

?sample
x5= LETTERS[5:20]
x5

y1 = sample(x5)
y1

set.seed(123) #to get same sequence
y2=sample(x5)
y2

set.seed(53)
(y3=sample(x5, size=5))

(gender= sample(c('M','F'), size=60, replace=TRUE, prob=c(.4,.6)))


# Matrix----
(m1=matrix(1:24, nrow=4))
(m2=matrix(1:24, nrow=4, byrow=T))
(m3=matrix(1:24, ncol=4, byrow=T))
(x=runif(60,60,100))

plot(density(x))
x=trunc(runif(60,60,100))
plot(density(x))

(m4=matrix(x,ncol=6))

colSums(m4)
rowSums(m4)
colMeans(m4)
m4[m4>67]
m4[m4>67 & m4<86]
m4[10,]
m4[8:10,]
m4[8:10,1:3]
m4[8:10, c(1,3,5)]#use c when not in sequence otherwise :
m4[,c(1,5,6)]

rowSums(m4[8:10, c(1,3,5)])


# Array----

#data.frame
#rollno, name, gender, course, marks1, marks2
(rollno = 1:60)
(name=paste('student',1:60,sep='-'))
(gender = sample(c('Male','Female'), size=60, replace=T, prob=c(.4,.6)))
name[15:20]
name[c(15,20,40)]
name[-1]                          #removing 1st name
name[-c(1:10)]                    #removing first name
rev(name)                         #reversing all
name[60:1]
name[-c(1:10, 40:45)]

(course = sample(c('BBA','MBA','BCom'), size = 60, replace=T, prob=c(.6,.2,.2)))

(marks1 = ceiling(rnorm(60, mean=65, sd=7)))
(marks2 = ceiling(rnorm(60, mean=60, sd= 11)))
(grades = sample(c('A','B','C'), size=60,replace=T))

#data frame
students = data.frame(rollno,name,gender,course,marks1,marks2,grades,stringsAsFactors = F)
class(students)
summary(students)
students[, c('name')]
students[students$gender=='Male',c('rollno','gender','marks1')]
students[students$gender=='Male' & students$grade == 'C', c('rollno','gender','marks1')]
students[students$marks1>55 | students$marks1<75, c('name','marks1')]
students[students$marks1>75 | students$marks2>75, c('name','marks1', 'marks2')]
students[students$marks1>50 & students$marks2>50, c('name','marks1', 'marks2')]

students$gender
t1=table(students$gender)
barplot(table(students$course))
text(1:3, table(students$course),table(students$course))

barplot(table(students$course),ylim=c(0,50),col=1:3)
text(1:3, table(students$course)+5,table(students$course))
?text

