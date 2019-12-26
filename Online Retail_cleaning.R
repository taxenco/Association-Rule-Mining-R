library(reshape2)
library(dplyr)
library(tidyr)
setwd('C:/Users/carlo/Desktop/LOAN PREDICCTION PROJECT/Exercise 2')
Online_Retail<-read.csv('Online Retail.csv',header=TRUE,na.strings=c("", "NA"))
head(Online_Retail)
Online_Retail$UnitPrice<-NULL
Online_Retail$Quantity<-NULL
Online_Retail$InvoiceDate<-NULL
Online_Retail$Country<-NULL
Online_Retail$StockCode<-NULL
Online_Retail$CustomerID<-NULL
head(Online_Retail)
str(Online_Retail)
pivot1<-Online_Retail%>%select(InvoiceNo,Description)%>%group_by(InvoiceNo)%>%summarise(Lista=sum(Description))
head(pivot1)
clean_dataset_Online_Retail<-write.csv(Online_Retail,'clean_dataset_Online_Retail.csv')