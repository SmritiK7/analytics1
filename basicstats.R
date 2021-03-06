#Basic Stats
x= ceiling(rnorm(10000, mean=60, sd=20))
mean(x)
median(x)

#there is no mode function for mode stats
table(x) #calculate frequency count
sort(table(x), decreasing=T)
library(modeest)  
mlv(x,method='shorth')

quantile(x)   #dividing in 4 parts
quantile(x,seq(.1,1,by=.1))  #decile
quantile(x,seq(.01,1,by=.01)) #percentile

library(e1071)  #load e1071
plot(density(x))
e1071::skewness(x)    #apply the skewness
kurtosis(x)

sd(x) : var(x)
cov(women$weight, women$height)
cor(women$weight, women$height)

stem(x)

#Freq Table
library(fdth)
ftable1 = fdt (x)
ftable1
