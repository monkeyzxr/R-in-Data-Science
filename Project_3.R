
auto.mpg <- read.delim("C:/auto-mpg.data-original")
View(auto.mpg)
AMPG <- read.csv("C:/AMPG.txt", sep=";")
View(AMPG)
summary(AMPG)
myData=AMPG
attach(myData)
lr.model_AMPG=lm(mpg~., data = myData)
summary(lr.model_AMPG)
plot(myData)
lr.model_AMPG_1=lm(mpg~., -acceleration, data = myData)
summary(lr.model_AMPG_1)
myData=AMPG
myData$cylinders=as.factor(myData$cylinders)
summary(myData)
attach(myData)
lr.model_AMPG=lm(mpg~., data = myData)
summary(lr.model_AMPG)
plot(myData)
myData=AMPG
myData$cylinders=as.factor(myData$cylinders)
myData$model.year=as.factor(myData$model.year)
myData$origin=as.factor(myData$origin)
summary(myData)
attach(myData)
lr.model_AMPG=lm(mpg~., data = myData)
summary(lr.model_AMPG)
plot(myData)
plot(myData)
lr.model_AMPG_1=lm(mpg~., -acceleration -model.year, data = myData)
lr.model_AMPG_1=lm(mpg~. -acceleration -model.year, data = myData)
summary(lr.model_AMPG_1)
plot(lr.model_AMPG_1)
summary(lr.model_AMPG_1)
lr.model_AMPG_2=lm(mpg~. -acceleration -model.year -displacement, data = myData)
summary(lr.model_AMPG_2)
lr.model_AMPG_2=lm(mpg~. -acceleration -model.year -displacement -origin, data = myData)
summary(lr.model_AMPG_2)
myData_1=myData[, -3]
myData_1=myData[, -5]
myData_1=myData[, -5]
myData_1=myData[, -5]
summary(myData_1)
plot(myData_1)
attach(myData)
myData_1=myData[, -3]
myData_1=myData[, -5]
myData_1=myData[, -5]
myData_1=myData[, -5]
summary(myData_1)
myData=myData[, -3]
myData=myData[, -5]
myData=myData[, -5]
myData=myData[, -5]
summary(myData)
plot(myData)
plot(residuals(lr.model_AMPG_2)~cylinders)
plot(residuals(lr.model_AMPG_2)~horsepower)
plot(residuals(lr.model_AMPG_2)~weight)
winequality.red <- read.csv("C:/winequality-red.csv", sep=";")
View(winequality.red)
pr_out_red=prcomp(winequality.red, scale=TRUE)
biplot(pr_out_red,scale = 0)
summary(winequality.red)
winequality.white <- read.csv("C:/winequality-white.csv", sep=";")
View(winequality.white)
summary(winequality.white)
pr_out_white=prcomp(winequality.white, scale=TRUE)
biplot(pr_out_white,scale = 0)
