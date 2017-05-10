summary(seeds_dataset)
head(seeds_dataset)
dim(seeds_dataset)
myData=na.omit(seeds_dataset)
myDataClean=seeds_dataset[-8]        #delete categorical numbers
summary(myDataClean)
dim(myDataClean)
colnames(myDataClean)=c("area", "perimeter", "compactness", "length_of_kernal", "width_of_kernal", "asymmetry_coefficient", "length_of_kernal_groove")
head(myDataClean)
summary(myDataClean)

#df=scale(myDataClean)
#head(df)
#df_cluster_3 <- kmeans(df,3)
#df_cluster_3
#table(seeds_dataset$X1, df_cluster_3$cluster)
kc <- kmeans(myDataClean, 3)
kc
table(seeds_dataset$X1, kc$cluster)

plot(myDataClean, col=kc$cluster)
plot(myDataClean[c("length_of_kernal", "width_of_kernal")], col=kc$cluster)
points(kc$centers[,c("length_of_kernal", "width_of_kernal")], col=1:3, pch=8, cex=2)

plot(myDataClean[c("length_of_kernal", "length_of_kernal_groove")], col=kc$cluster)
points(kc$centers[,c("length_of_kernal", "length_of_kernal_groove")], col=1:3, pch=8, cex=2)

plot(myDataClean[c("width_of_kernal", "length_of_kernal_groove")], col=kc$cluster)
points(kc$centers[,c("width_of_kernal", "length_of_kernal_groove")], col=1:3, pch=8, cex=2)

########################

hc.complete = hclust(dist(myDataClean), method="complete")
hc.average = hclust(dist(myDataClean), method="average")
hc.single = hclust(dist(myDataClean), method="single")
par(mfrow=c(1,3))
plot(hc.complete,main="Complete Linkage", xlab="", sub="", cex=.9)
plot(hc.average, main="Average Linkage", xlab="", sub="", cex=.9)
plot(hc.single, main="Single Linkage", xlab="", sub="", cex=.9)
cutree(hc.complete,2)
cutree(hc.average,3)
dd=as.dist(1-cor(t(myDataClean)))
plot(hclust(dd, method="complete"), main="Complete Linkage with Correlation-Based Distance", xlab="", sub="")
