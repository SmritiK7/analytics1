install.packages('gsheet')
library(gsheet)

url='https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907'
denco = as.data.frame(gsheet2tbl(url))
str(denco)
head(denco)

library(dplyr)
denco %>% count(custname, sort =T)

denco %>% group_by(custname) %>% summarise(n=n()) %>% arrange(desc(n)) #same as above in a different format

df3a = aggregate(denco$revenue, by=list(denco$partnum), FUN=sum)
head(df3a)

denco %>% group_by(partnum) %>% summarise(n=n()) %>% arrange(desc(n))

#which part has highest Profit : partno - sum(profit)
names(denco)
d4fa = aggregate(margin ~ partnum, data=denco, FUN=sum)
aggregate(margin ~ partnum, data = denco, FUN = sum)
head(d4fa[order(df4a$margin)])

#delete all before above commment


