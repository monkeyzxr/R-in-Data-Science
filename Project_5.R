OnlineNewsPopularity <- read.csv("C:/OnlineNewsPopularity.csv")
View(OnlineNewsPopularity)
myData=OnlineNewsPopularity
myData = myData[,-1]
myData = myData[,-1]
summary(myData)
myData$data_channel_is_lifestyle = as.factor(myData$data_channel_is_lifestyle)
myData$data_channel_is_entertainment = as.factor(myData$data_channel_is_entertainment)
myData$data_channel_is_bus = as.factor(myData$data_channel_is_bus)
myData$data_channel_is_socmed = as.factor(myData$data_channel_is_socmed)
myData$data_channel_is_tech = as.factor(myData$data_channel_is_tech)
myData$data_channel_is_world = as.factor(myData$data_channel_is_world)
myData$weekday_is_monday = as.factor(myData$weekday_is_monday)
myData$weekday_is_tuesday = as.factor(myData$weekday_is_tuesday)
myData$weekday_is_wednesday = as.factor(myData$weekday_is_wednesday)
myData$weekday_is_thursday = as.factor(myData$weekday_is_thursday)
myData$weekday_is_friday = as.factor(myData$weekday_is_friday)
myData$weekday_is_saturday = as.factor(myData$weekday_is_saturday)
myData$weekday_is_sunday = as.factor(myData$weekday_is_sunday)
myData$is_weekend = as.factor(myData$is_weekend)
summary(myData)
dim(myData)
onlinenews.model.best = regsubsets(shares~., myData, nvmax=58)
library(leaps)
onlinenews.model.best = regsubsets(shares~., myData, nvmax=58)
onlinenews.model.best = regsubsets(shares~., myData, nvmax=58)
library(leaps)
onlinenews.model.best = regsubsets(shares~., data=myData, nvmax=58)
onlinenews.model.fwd = regsubsets(shares~., data=myData, nvmax=58,method="forward" )
onlinenews.model.best = regsubsets(shares~., data=myData, nvmax=10)
install.packages("leaps")
library(leaps)
onlinenews.model.best = regsubsets(shares~., data=myData, nvmax=10)
onlinenews.model.best = regsubsets(shares~.,myData)
install.packages("leaps")
install.packages("leaps")
library(leaps)
onlinenews.model.best = regsubsets(shares~.,myData)
onlinenews.model.best = regsubsets(shares~., data=myData, nvmax=10)
onlinenews.model.best = regsubsets(shares~., data=myData, nvmax=10)
summary(onlinenews.model.best)
onlinenews.model.fwd = regsubsets(shares~., data=myData, nvmax=6,method="forward" )
onlinenews.model.fwd = regsubsets(shares~., data=myData, method="forward" )
summary(onlinenews.model.fwd)
onlinenews.fwd.summary = summary(onlinenews.model.fwd)
onlinenews.fwd.summary$adjr2
onlinenews.fwd.summary$cp
onlinenews.model.fwd = regsubsets(shares~., data=myData, nvmax=58,method="forward" )
summary(onlinenews.model.fwd)
onlinenews.fwd.summary = summary(onlinenews.model.fwd)
onlinenews.fwd.summary$adjr2
onlinenews.fwd.summary$cp
which.min(onlinenews.fwd.summary$adjr2)
which.min(onlinenews.fwd.summary$cp)
onlinenews.fwd.summary = summary(onlinenews.model.fwd)
onlinenews.fwd.summary$adjr2
onlinenews.fwd.summary$cp
which.min(onlinenews.fwd.summary$cp)
plot(onlinenews.fwd.summary$cp,xlab="Number of Variables",ylab="Cp",type="l")
coef(onlinenews.model.fwd,28)
k=10
folds=sample(1:k,nrow(myData),replace=TRUE)
cv.errors=matrix(NA,k,58, dimnames=list(NULL, paste(1:58)))
for(j in 1:k){
best.fit=regsubsets(shares~.,data=myData[folds!=j,],nvmax=58)
for(i in 1:58){
pred=predict(best.fit,myData[folds==j,],id=i)
cv.errors[j,i]=mean( (myData$shares[folds==j]-pred)^2)
}
}
k=10
folds=sample(1:k,nrow(myData),replace=TRUE)
cv.errors=matrix(NA,k,58, dimnames=list(NULL, paste(1:58)))
for(j in 1:k){
best.fit=regsubsets(shares~.,data=myData[folds!=j,],nvmax=58)
for(i in 1:58){
pred=predict(best.fit,myData[folds==j,],id=i)
cv.errors[j,i]=mean( (myData$shares[folds==j]-pred)^2)
}
}
k=10
folds=sample(1:k,nrow(myData),replace=TRUE)
cv.errors=matrix(NA,k,58, dimnames=list(NULL, paste(1:58)))
for(j in 1:k){
forward.fit=regsubsets(shares~.,data=myData[folds!=j,],nvmax=58,method="forward")
for(i in 1:58){
pred=predict(forward.fit,myData[folds==j,],id=i)
cv.errors[j,i]=mean( (myData$shares[folds==j]-pred)^2)
}
}
k=10
folds=sample(1:k,nrow(myData),replace=TRUE)
cv.errors=matrix(NA,k,28, dimnames=list(NULL, paste(1:28)))
for(j in 1:k){
forward.fit=regsubsets(shares~.,data=myData[folds!=j,],nvmax=28,method="forward")
for(i in 1:28){
pred=predict(forward.fit,myData[folds==j,],id=i)
cv.errors[j,i]=mean( (myData$shares[folds==j]-pred)^2)
}
}
predict.regsubsets=function(object,newdata,id,...){
form=as.formula(object$call[[2]])
mat=model.matrix(form,newdata)
coefi=coef(object,id=id)
xvars=names(coefi)
mat[,xvars]%*%coefi
}
##regfit.best=regsubsets(Salary~.,data=Hitters,nvmax=19)
refit.fwd = regsubsets(shares~., data=myData, method="forward" )
k=10
folds=sample(1:k,nrow(myData),replace=TRUE)
cv.errors=matrix(NA,k,58, dimnames=list(NULL, paste(1:58)))
for(j in 1:k){
fwd.fit=regsubsets(shares~.,data=myData[folds!=j,],nvmax=58)
for(i in 1:58){
pred=predict(fwd.fit,myData[folds==j,],id=i)
cv.errors[j,i]=mean( (myData$shares[folds==j]-pred)^2)
}
}
predict.regsubsets=function(object,newdata,id,...){
form=as.formula(object$call[[2]])
mat=model.matrix(form,newdata)
coefi=coef(object,id=id)
xvars=names(coefi)
mat[,xvars]%*%coefi
}
refit.fwd = regsubsets(shares~., data=myData, method="forward" )
k=10
folds=sample(1:k,nrow(myData),replace=TRUE)
cv.errors=matrix(NA,k,58, dimnames=list(NULL, paste(1:58)))
for(j in 1:k){
fwd.fit=regsubsets(shares~.,data=myData[folds!=j,],method="forward",nvmax=58)
for(i in 1:58){
pred=predict(fwd.fit,myData[folds==j,],id=i)
cv.errors[j,i]=mean( (myData$shares[folds==j]-pred)^2)
}
}
library("glmnet", lib.loc="~/R/win-library/3.2")
x=model.matrix(shares~.,myData)[,-1]
y=myData$shares
grid=10^seq(10,-2,length=100)
ridge.mod=glmnet(x,y,alpha=0,lambda=grid)
dim(coef(ridge.mod))
predict(ridge.mod,s=50,type="coefficients")[1:20,]
predict(ridge.mod,s=50,type="coefficients")[1:59,]
set.seed(1)
train=sample(1:nrow(x), nrow(x)/2)
test=(-train)
y.test=y[test]
ridge.mod=glmnet(x[train,],y[train],alpha=0,lambda=grid, thresh=1e-12)
ridge.pred=predict(ridge.mod,s=4,newx=x[test,])
mean((ridge.pred-y.test)^2)
cv.out=cv.glmnet(x[train,],y[train],alpha=0)
plot(cv.out)
bestlam=cv.out$lambda.min
bestlam
ridge.pred=predict(ridge.mod,s=bestlam,newx=x[test,])
mean((ridge.pred-y.test)^2)
ridge.model=glmnet(x,y,alpha=0)
predict(ridge.model,type="coefficients",s=bestlam)[1:20,]
predict(ridge.model,type="coefficients",s=bestlam)[1:59,]
x=model.matrix(shares~.,myData)[,-1]
y=myData$shares
grid=10^seq(10,-2,length=100)
ridge.mod=glmnet(x,y,alpha=0,lambda=grid)
dim(coef(ridge.mod))
predict(ridge.mod,s=50,type="coefficients")[1:59,]
set.seed(1)
train=sample(1:nrow(x), nrow(x)/2)
test=(-train)
y.test=y[test]
ridge.mod=glmnet(x[train,],y[train],alpha=0,lambda=grid, thresh=1e-12)
ridge.pred=predict(ridge.mod,s=4,newx=x[test,])
mean((ridge.pred-y.test)^2)
cv.out=cv.glmnet(x[train,],y[train],alpha=0)
plot(cv.out)
bestlam=cv.out$lambda.min
bestlam
ridge.pred=predict(ridge.mod,s=bestlam,newx=x[test,])
mean((ridge.pred-y.test)^2)
ridge.model=glmnet(x,y,alpha=0)
################
#################
#################
x=model.matrix(shares~.,myData)[,-1]
y=myData$shares
grid=10^seq(10,-2,length=100)
ridge.mod=glmnet(x,y,alpha=0,lambda=grid)
dim(coef(ridge.mod))
predict(ridge.mod,s=50,type="coefficients")[1:58,]
set.seed(1)
train=sample(1:nrow(x), nrow(x)/2)
test=(-train)
y.test=y[test]
ridge.mod=glmnet(x[train,],y[train],alpha=0,lambda=grid, thresh=1e-12)
ridge.pred=predict(ridge.mod,s=4,newx=x[test,])
mean((ridge.pred-y.test)^2)
cv.out=cv.glmnet(x[train,],y[train],alpha=0)
plot(cv.out)
bestlam=cv.out$lambda.min
bestlam
ridge.pred=predict(ridge.mod,s=bestlam,newx=x[test,])
mean((ridge.pred-y.test)^2)
ridge.model=glmnet(x,y,alpha=0)
predict(ridge.model,type="coefficients",s=bestlam)[1:58,]
lasso.mod=glmnet(x[train,],y[train],alpha=1,lambda=grid)
plot(lasso.mod)
cv.out=cv.glmnet(x[train,],y[train],alpha=1)
plot(cv.out)
bestlam=cv.out$lambda.min
########################################
################################
lasso.mod=glmnet(x[train,],y[train],alpha=1,lambda=grid)
plot(lasso.mod)
set.seed(1)
cv.out=cv.glmnet(x[train,],y[train],alpha=1)
plot(cv.out)
set.seed(1)
cv.out=cv.glmnet(x[train,],y[train],alpha=1)
plot(cv.out)
bestlam=cv.out$lambda.min
lasso.pred=predict(lasso.mod,s=bestlam,newx=x[test,])
mean((lasso.pred-y.test)^2)
out=glmnet(x,y,alpha=1,lambda=grid)
lasso.coef=predict(out,type="coefficients",s=bestlam)[1:59,]
lasso.coef
lasso.coef[lasso.coef!=0]
savehistory("~/Desktop/Project/Project_5.R")
