abalone <- read.csv("C:/abalone.data")
View(abalone)
myData = abalone[which(abalone$Sex == 'M'),]
summary(myData)
attach(myData)
plot(VWGHT~Diameter)
myData = abalone[which(abalone$Sex == 'M'),]
summary(myData)
attach(myData)
plot(VWGHT~Diameter)
dim(myData)
train = sample(1528,1100)
for(i in 1:10){
fit = lm(VWGHT~poly(Diameter,i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,5])^2)
}
errs = rep(0,10)
for(i in 1:10){
fit = lm(VWGHT~poly(Diameter,i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,5])^2)
}
errs
errs = rep(0,10)
for(i in 1:10){
fit = lm(VWGHT~poly(Diameter,i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,7])^2)
}
errs
dim(myData)
train = sample(1528,1100)
errs = rep(0,10)
for(i in 1:10){
fit = lm(VWGHT~poly(Diameter,i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,7])^2)
}
errs
errs = rep(0,10)
for(i in 1:10){
fit = lm(VWGHT~bs(Diameter,df=i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,7])^2)
}
errs
library("splines")
errs = rep(0,10)
for(i in 1:10){
fit = lm(VWGHT~bs(Diameter,df=i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,7])^2)
}
errs
errs = rep(0,10)
for(i in 1:10){
fit = lm(VWGHT~ns(Diameter,df=i), data=myData, subset=train)
pred = predict(fit, data.frame(Diameter=myData[-train,3]))
errs[i]=mean((pred-myData[-train,7])^2)
}
errs
errs = rep(0,10)
trainX = myData[train,3]
trainY = myData[train,7]
testX = myData[-train,3]
testY = myData[-train,7]
fit = smooth.spline(trainX,trainY,cv=TRUE)
pred = predict(fit,data.frame(Diameter=testX))
err = mean((pred$y - testY)^2)
err
savehistory("~/Desktop/Project/Project_6.Rhistory")
