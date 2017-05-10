dataset_in_wide_format <- read.csv("C:/Northampton Housing Prices/dataset_in_wide_format.csv")
View(dataset_in_wide_format)
myData = dataset_in_wide_format;
myData$housenum = NULL;
myData$acregroup = NULL;
myData$adj1998 = NULL;
myData$adj2007= NULL;
myData$adj2011 = NULL;
myData$bedgroup = NULL:
myData$diff2014= NULL;
myData$distgroup = NULL;
myData$garagegroup = NULL;
myData$housenum.1 = NULL;
myData$latitude = NULL;
myData$longitude = NULL;
myData$no_half_baths = NULL;
myData$price1998 = NULL;
myData$price2007 = NULL;
myData$price2011 = NULL;
myData$price2014 = NULL;
myData$sfgroup = NULL;
myData$streetname = NULL;
myData$streetno = NULL;
myData$zip = NULL;
myData = dataset_in_wide_format;
myData$housenum = NULL;
myData$acregroup = NULL;
myData$adj1998 = NULL;
myData$adj2007= NULL;
myData$adj2011 = NULL;
myData$bedgroup = NULL:
myData$diff2014 = NULL;
myData$distgroup = NULL;
myData$garagegroup = NULL;
myData$housenum.1 = NULL;
myData$latitude = NULL;
myData$longitude = NULL;
myData$no_half_baths = NULL;
myData$price1998 = NULL;
myData$price2007 = NULL;
myData$price2011 = NULL;
myData$price2014 = NULL;
myData$sfgroup = NULL;
myData$streetname = NULL;
myData$streetno = NULL;
myData$zip = NULL;
myData = dataset_in_wide_format;
myData$housenum = NULL;
myData$acregroup = NULL;
myData$adj1998 = NULL;
myData$adj2007= NULL;
myData$adj2011 = NULL;
myData$bedgroup = NULL:
myData$diff2014 = NULL;
myData$distgroup = NULL;
myData$garagegroup = NULL;
myData$housenum.1 = NULL;
myData$latitude = NULL;
myData$longitude = NULL;
myData$no_half_baths = NULL;
myData$price1998 = NULL;
myData$price2007 = NULL;
myData$price2011 = NULL;
myData$price2014 = NULL;
myData$sfgroup = NULL;
myData$streetname = NULL;
myData$streetno = NULL;
myData$zip = NULL;
View(myData)
myData$diff2014 = NULL;
View(myData)
myData$bedgroup = NULL:
View(myData)
myData$bedgroup = NULL:
myData$bedgroup = NULL;
myData$bedgroup = NULL;
View(myData)
summary(myData)
myData[,"bedrooms"] = as.factor(myData[,"bedrooms"])
myData[,"garage_spaces"] = as.factor(myData[,"garage_spaces"])
myData[,"no_full_baths"] = as.factor(myData[,"no_full_baths"])
myData[,"no_rooms"] = as.factor(myData[,"no_rooms"])
summary(myData)
library("gbm", lib.loc="~/R/win-library/3.2")
library("randomForest", lib.loc="~/R/win-library/3.2")
library("tree", lib.loc="~/R/win-library/3.2")
dim(myData)
tree_myData = tree(ptchange~., myData, subset = train)
tree_myData = tree("ptchange"~., myData, subset = train)
tree_myData=tree(pctchange~., myData)
summary(tree_myData)
plot(tree_myData, pretty=0)
plot(tree_myData)
plot(tree_myData, pretty=0)
tree_myData=tree(pctchange~., myData)
summary(tree_myData)
plot(tree_myData)
plot(tree_myData, pretty=0)
tree_myData=tree(pctchange~., myData)
summary(tree_myData)
plot(tree_myData)
text(tree_myData, pretty = 0)
tree_myData=tree(pctchange~., myData)
summary(tree_myData)
plot(tree_myData)
text(tree_myData, pretty = 0)
train = sample(1:104,74)
tree_myData = tree(pctchange~., myData, subset = train)
summary(tree_myData)
cv_tree_myData = cv.tree(tree_myData)
plot(cv_tree_myData$size,cv_tree_myData$dev,type='b')
prune_myData = prune.tree(tree_myData,best=3)
yhat = predict(prune_myData,newdata = myData[-train,])
mean((yhat - myData[-train,"pctchange"])^2)
bagging_myData = randomForest(pctchange~., data=myData,subset=train,mtry=9,importance=TRUE)
bagging_myData
yhat_bagging = predict(bagging_myData,newdata = myData[-train,])
mean((yhat_bagging - myData[-train,"pctchange"])^2)
rf_myData = randomForest(pctchange~., data=myData,subset=train,mtry=5,importance=TRUE)
rf_myData
yhat_rf = predict(rf_myData,newdata = myData[-train,])
mean((yhat_rf - myData[-train,"pctchange"])^2)
rf_myData = randomForest(pctchange~., data=myData,subset=train,mtry=3,importance=TRUE)
rf_myData
yhat_rf = predict(rf_myData,newdata = myData[-train,])
mean((yhat_rf - myData[-train,"pctchange"])^2)
boost_myData = gbm(pctchange~.,data=myData[train,],distribution = "gaussian", n.trees=5000, interaction.depth = 1, shrinkage = .001)
yhat.boost = predict(rf-myData,newdata = myData[-train,],n.trees=5000)
yhat.boost = predict(rf_myData,newdata = myData[-train,],n.trees=5000)
mean((yhat.boost - myData[-train,"pctchange"])^2)
boost_myData = gbm(pctchange~.,data=myData[train,],distribution = "gaussian", n.trees=5000, interaction.depth = 1, shrinkage = .001)
yhat.boost = predict(rf_myData,newdata = myData[-train,],n.trees=5000)
mean((yhat.boost - myData[-train,"pctchange"])^2)
boost_myData = gbm(pctchange~.,data=myData[train,],distribution = "gaussian", n.trees=500, interaction.depth = 1, shrinkage = .001)
yhat.boost = predict(rf_myData,newdata = myData[-train,],n.trees=500)
mean((yhat.boost - myData[-train,"pctchange"])^2)
boost_myData = gbm(pctchange~.,data=myData[train,],distribution = "gaussian", n.trees=5000, interaction.depth = 1, shrinkage = .01)
yhat.boost = predict(rf_myData,newdata = myData[-train,],n.trees=5000)
mean((yhat.boost - myData[-train,"pctchange"])^2)
savehistory("~/Desktop/Project/Project_7.R")
