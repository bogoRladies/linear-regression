

setwd("D:\\to share r ladies bogor 6")
getwd()

# http://www.learnbymarketing.com/tutorials/linear-regression-in-r/
dt <- read.csv("data-marketing-budget-12mo.csv")

summary(dt)
install.packages("vtable")
library(vtable)
vtable(dt,index=T)
View(dt)
names(dt)
dt$Sales

#Simple/one variable linear regression 
#function lm()

#Sales dipengaruhi jumlah Spend perusahaan?
y = mx + c 
model.fit<-lm(Sales~Spend,data=dt)
model.fit<-lm(dt$Sales~dt$Spend)
summary(model.fit)

dt.resid<-resid(model.fit)
hist(dt.resid)
plot(dt.resid)

fit2<-lm(Sales~Spend+Month,data=dt)
summary(fit2)

fit3<-lm(Sales~Spend*Month,data=dt)
summary(fit3)

plot(model.fit)
plot(model.fit,1)
y = mx + c
plot(Sales~Spend,data=dt)
abline(lm(dt$Sales~dt$Spend))
