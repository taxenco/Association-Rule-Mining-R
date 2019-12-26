### PACKAGES ###

library(arules)
library(arulesViz)

### OPEN FILE ###
setwd('C:/Users/carlo/Desktop/ASDM/Exercise 2')
retail<-read.transactions('market basket.csv',format = 'basket', sep=',')

### DATA INSPECTION ###

itemFrequencyPlot(retail,topN=15)

### ASSOCIATION RULES ###

rules<-apriori(retail,parameter=list(minlen=1,maxlen=2,supp= 0.1,conf = 0.1))
rules <- sort(rules, by='lift', decreasing = TRUE)
inspect(rules)

### GRAPHS ###

rules1<-apriori(retail,parameter = list(minlen=2, maxlen=3,conf = 0.85)) 
inspect(rules1)
plot(rules1)
plot(rules1,method = 'grouped')
plot(rules1,method = 'paracoord')
plot(rules1@quality)
ruleExplorer(rules1) 
rules1<-apriori(retail,parameter = list(minlen=2, maxlen=3,conf = 0.50),appearance=list(rhs=c('bagels'),default="lhs")) 