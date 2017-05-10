# R-in-Data-Science

created by Xiangru Zhou

This project is to solve statistical learning problems by using R language. These problems include linear regression, classification, resampling, model selection, nonlinear methods, tree-based methods, support vector machine, unsupervised learning.

This project helps to learn the basics of statistical learning and gain experience applying various modeling techniques to data sets using the R language.

Project 1:

The first project will be to apply the Association Rules Mining technique to look for association rules in the following dataset: https://archive.ics.uci.edu/ml/datasets/STUDENT+ALCOHOL+CONSUMPTION. This page contains information about the dataset and the links to the data itself. Note that some of the variables in the dataset are numeric, so you will want to clean the dataset and create factors for all of the variables. Look for good support, god confidence, and high lift.


Project 2:

The second project will be to apply the K-Means Clustering and Hierarchical Clustering techniques to look for clusters in the following dataset: https://archive.ics.uci.edu/ml/datasets/seeds. This page contains information about the dataset and the links to the data itself. Use both methods and look for a good clustering structure.


Project 3:

The third project will involve analyzing two datasets:

Multiple Linear Regression: Try to build a multiple linear regression model for the following dataset:https://archive.ics.uci.edu/ml/datasets/Auto+MPG. Your goal here is to predict MPG in terms of the other predictor values. Note “ID” should be removed. Feel free to examine nonlinear terms as well. Report your findings using RSS and R2; you are not doing cross validation here, just trying to fit a good model to this data.

Principal Component Analysis: Use PCA to try to visualize the dataset given by https://archive.ics.uci.edu/ml/datasets/Wine+Quality. Note the dataset is usually used for regression or classification, but for this project try to do PCA on the data to see if any of there are any obvious clusters, and also independence of variables. Explore how PCA works in R using this dataset, and report anything interesting you find.


Project 4:

The fourth project will involve analyzing two datasets:

Parkinsons Classification: This dataset contains audio information on subjects with and without Parkinsons disease. Your task is to build a model that predicts the “status” variable in terms of other variables in the dataset.

NFL FG: This dataset contains field goal information (distance, week number, success/failure) for one NFL season. Your job is to build a model that predicts the success/failure variable based upon the other two variables.

These are classification problems – use the techniques (logistic regression, LDA, QDA, naïve Bayes) as your tools and try to create the most accurate model possible in terms of test misclassification rate (create a training and test subset for each problem).


Project 5:

The fifth project will involve analyzing an online news popularity dataset. The data description and data file can be found here:
 https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity#
Your goal is to create a model that will predict the number of shares for an article based upon the other predictors. You should remove the url andtimedelta attributes, as they are not predictive. For this project, use forward/backward subset selection, as well as Lasso and Ridge to try to create as accurate a model as possible. You should use cross validation to estimate the test MSE.


Project 6:

The six project will involve analyzing the Abalone dataset. The data description and data file can be found here:
 https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data
Your goal is to compare various techniques for modeling the VWGHT variable as a function of the Diameter variable. Compare (using CV) the techniques we have looked at: polynomial regression, cubic splines, natural splines, and smoothing splines. Find the best model (in terms of predicting test MSE) you can.  


Project 7:

The seventh project will involve analyzing the Northhampton Housing Prices dataset. Your goal is to build a model that will determine that percent change in housing price based upon the other factors contained in the data. Note that some of the data is unnecessary (address, house number, lat/long numbers, etc.), and other data is redundant (bedrooms/bedroom group, distance/distance group, etc.). You will need to spend some time cleaning up the data before you build your model – carefully think about which predictors you want to keep and which you want to discard.

Once you have the dataset cleaned up, use decision trees to model the percent change in price between 1998 and 2014. Build a standard tree and then prune it; also use random forest, bagging, and boosting to produce prediction models.  Your goal is to find the best model (in terms of predicting test MSE) you can – use cross validation on a training/test set to compare the models.  


Project 8:

The eight project will be to build a classification model for SMS text messages using the Bag of Words technique. The attached zip file contains the corpus and a description of the data. Use Bag of Words to create a DTM, remove stop words of your choosing, and scale using TF-IDF. You can then use a modeling technique of your choice to classify the text (spam or ham). I recommend doing cross validation (simple single set CV will suffice) to test your model.


Project 9:

The final project will be to compare classification models on the attached dataset. The dataset represents credit approval (symbols have been changed to protect privacy). Your job is to compare the following approaches by building models and testing them: Logistic Regression, Random Forest, Neural Network, Support Vector Machine. Use cross validation to identify the best model for this problem.








