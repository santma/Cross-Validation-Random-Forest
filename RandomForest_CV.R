###Random Forest with Cross Validation
library(ggplot2)
library(randomForest)

#importing dataset
dataset = read.csv("sd_training_data.csv")

# cleaning
dataset = dataset[,-1]

# Perform 10 fold cross validation
miss_scores = data.frame()
for (j in 1:30) {
  folds <- cut(seq(1,nrow(dataset)),breaks=10,labels=FALSE)
  for (i in 1:10){
    testIndexes = which(folds==i,arr.ind=TRUE)
    testData = dataset[testIndexes, ]
    trainData = dataset[-testIndexes, ]
    
    X_train = trainData[,2:52]
    Y_train = trainData[,1]
    
    X_val = testData[,2:52]
    Y_val = testData[,1]
    
    classifier = randomForest(x = X_train,
                              y = Y_train,
                              ntree = j)
    y_pred = predict(classifier, newdata = X_val)
    miss[i] = mean(y_pred != Y_val)
  }
  fold_miss[j] = mean(miss)
}
miss_scores <- cbind(fold_miss)

trees = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)

miss_scores <- cbind(miss_scores, trees)
miss_scores = as.data.frame(miss_scores)

ggplot(miss_scores, aes(x = trees)) + 
  geom_line(aes(y = fold_miss)) +
  ggtitle("Random Forest Misscalssification Scores") +
  ylab("Missclassifictaion Rate") +
  xlab("Number of Trees")







