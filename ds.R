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

# Array----
