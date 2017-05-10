SMSSpamCollection <- read.delim("C:/SMSSpamCollection", header=FALSE)
View(SMSSpamCollection)
library("text2vec", lib.loc="~/R/win-library/3.2")
myData = SMSSpamCollection
it <- itoken(myData$V2,
+ preprocess_function = tolower,
+ tokenizer = word_tokenizer,
+ )
it <- itoken(myData$V2,preprocess_function = tolower,tokenizer = word_tokenizer)
myData$V2 <- as.character(myData$V2)
it <- itoken(myData$V2,preprocess_function = tolower,tokenizer = word_tokenizer)
myData = SMSSpamCollection
set.seed(42L)
myData$V2 <- as.character(myData$V2)
it <- itoken(myData$V2,preprocess_function = tolower,tokenizer = word_tokenizer)
sw <- c("i", "me", "my", "myself", "we", "our", "ours", "ourselves", "you", "your", "yours")
vocab <- create_vocabulary(it, stopwords = sw)
it <- itoken(myData$V2, tolower, word_tokenizer)
vectorizer <- vocab_vectorizer(vocab)
dtm <- create_dtm(it, vectorizer)
str(dtm)
identical(rownames(dtm))
library("glmnet", lib.loc="~/R/win-library/3.2")
fit <- cv.glmnet(x = dtm, y = myData[[V1]],
family = 'binomial',
# lasso penalty
alpha = 1,
# interested in the area under ROC curve
type.measure = "auc",
# 5-fold cross-validation
nfolds = 5,
# high value is less accurate, but has faster training
thresh = 1e-3,
# again lower number of iterations for faster training
maxit = 1e3)
fit <- cv.glmnet(x = dtm, y = myData[["V1"]],
family = 'binomial',
# lasso penalty
alpha = 1,
# interested in the area under ROC curve
type.measure = "auc",
# 5-fold cross-validation
nfolds = 5,
# high value is less accurate, but has faster training
thresh = 1e-3,
# again lower number of iterations for faster training
maxit = 1e3)
plot(fit)
library(glmnet)
fit <- cv.glmnet(x = dtm, y = myData[['V1']],
family = 'binomial',
# lasso penalty
alpha = 1,
# interested in the area under ROC curve
type.measure = "auc",
# 5-fold cross-validation
nfolds = 5,
# high value is less accurate, but has faster training
thresh = 1e-3,
# again lower number of iterations for faster training
maxit = 1e3)
plot(fit)
print(paste("max AUC =", round(max(fit$cvm), 4)))
pruned_vocab <- prune_vocabulary(vocab, term_count_min = 10, doc_proportion_max = 0.5, doc_proportion_min = 0.001)
it <- itoken(tokens)
pruned_vocab <- prune_vocabulary(vocab, term_count_min = 10,
doc_proportion_max = 0.5, doc_proportion_min = 0.001)
tokens <- myData$V2 %>%
tolower() %>%
word_tokenizer()
it <- itoken(tokens)
vectorizer <- vocab_vectorizer(pruned_vocab)
dtm <- create_dtm(it, vectorizer)
dim(dtm)
dtm <- dtm %>% transform_tfidf()
fit <- cv.glmnet(x = dtm, y = myData[['V1']],
family = 'binomial',
alpha = 1,
type.measure = "auc",
nfolds = 5,
thresh = 1e-3,
maxit = 1e3)
plot(fit)
print(paste("max AUC =", round(max(fit$cvm), 4)))
it <- itoken(tokens)
vocab <- create_vocabulary(it, ngram = c(1L, 3L)) %>%
prune_vocabulary(term_count_min = 10,
doc_proportion_max = 0.5,
doc_proportion_min = 0.001)
vectorizer <- vocab_vectorizer(vocab)
dtm <- tokens %>%
itoken() %>%
create_dtm(vectorizer) %>%
transform_tfidf()
## idf scaling matrix not provided, calculating it form input matrix
dim(dtm)
fit <- cv.glmnet(x = dtm, y = myData[['V1']],
family = 'binomial',
alpha = 1,
type.measure = "auc",
nfolds = 5,
thresh = 1e-3,
maxit = 1e3)
plot(fit)
print(paste("max AUC =", round(max(fit$cvm), 4)))
###########################
train = sample(1:3184, 2300)
x.train = dtm[train,]
y_vals = movie_review[['V1']]
y.train = y_vals[train]
x.test = dtm[-train,]
y.test = y_vals[-train]
lasso.mod = glmnet(x.train,y.train,alpha=1)
lasso.probs = predict(lasso.mod,s=bestlam,newx = x.test, response = "response")
lasso.pred = rep(0, 1000)
lasso.pred[lasso.probs > .5] = 1
table(lasso.pred, y.test)
mean(lasso.pred == y.test)
##########################
x.train = dtm[train,]
x.test = dtm[-train,]
lasso.mod = glmnet(x.train,y.train,alpha=1)
lasso.probs = predict(lasso.mod,s=bestlam,newx = x.test, response = "response")
lasso.pred = rep(0, 1000)
lasso.pred[lasso.probs > .5] = 1
table(lasso.pred, y.test)
mean(lasso.pred == y.test)
round(max(fit$cvm), 4)
bestlam = fit$lambda.min
bestlam
x.train = dtm[train,]
x.test = dtm[-train,]
lasso.mod = glmnet(x.train,y.train,alpha=1)
lasso.probs = predict(lasso.mod,s=bestlam,newx = x.test, response = "response")
lasso.pred = rep(0, 1000)
lasso.pred[lasso.probs > .5] = 1
table(lasso.pred, y.test)
mean(lasso.pred == y.test)
train = sample(1:3184, 2000)
x.train = dtm[train,]
y_vals = movie_review[['V1']]
y.train = y_vals[train]
x.test = dtm[-train,]
y.test = y_vals[-train]
lasso.mod = glmnet(x.train,y.train,alpha=1)
lasso.probs = predict(lasso.mod,s=bestlam,newx = x.test, response = "response")
lasso.pred = rep(0, 1000)
lasso.pred[lasso.probs > .5] = 1
table(lasso.pred, y.test)
mean(lasso.pred == y.test)
###############
################
pruned_vocab <- prune_vocabulary(vocab, term_count_min = 10,
doc_proportion_max = 0.5, doc_proportion_min = 0.001)
tokens <- myData$V2 %>%
tolower() %>%
word_tokenizer()
it <- itoken(tokens)
vectorizer <- vocab_vectorizer(pruned_vocab)
dtm <- create_dtm(it, vectorizer)
dim(dtm)
dtm <- dtm %>% transform_tfidf()
fit <- cv.glmnet(x = dtm, y = myData[['V1']],
family = 'binomial',
alpha = 1,
type.measure = "auc",
nfolds = 5,
thresh = 1e-3,
maxit = 1e3)
plot(fit)
round(max(fit$cvm), 4)
bestlam = fit$lambda.min
bestlam
train = sample(1:3185, 2100)
x.train = dtm[train,]
y_vals = myData[['V1']]
y.train = y_vals[train]
x.test = dtm[-train,]
y.test = y_vals[-train]
lasso.mod = glmnet(x.train,y.train,alpha=1)
lasso.probs = predict(lasso.mod,s=bestlam,newx = x.test, response = "response")
lasso.pred = rep(0, 1000)
lasso.pred[lasso.probs > .5] = 1
table(lasso.pred, y.test)
mean(lasso.pred == y.test)
train = sample(1:3184, 2100)
x.train = dtm[train,]
y_vals = myData[['V1']]
y.train = y_vals[train]
x.test = dtm[-train,]
y.test = y_vals[-train]
lasso.mod = glmnet(x.train,y.train,alpha=1)
lasso.probs = predict(lasso.mod,s=bestlam,newx = x.test, response = "response")
lasso.pred = rep(0, 1000)
lasso.pred[lasso.probs > .5] = 1
table(lasso.pred, y.test)
mean(lasso.pred == y.test)
savehistory("~/Desktop/Project/Project_8.R")
