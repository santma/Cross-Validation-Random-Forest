#importing dataset
dataset = read.csv("sd_training_data.csv")

# cleaning
dataset = dataset[,-1]

# Splitting the training_set into the Training set and Validation set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
validation_set = subset(dataset, split == FALSE)

# Fitting Random Forest Classification to the Training set
# install.packages('randomForest')
library(randomForest)
set.seed(123)
classifier = randomForest(x = training_set[-1],
                          y = training_set$Label,
                          ntree = 100)

# Predicting the Validation set results
y_pred = predict(classifier, newdata = validation_set[-1])

# Evaluating Preformance on Validation Set
y_act = as.factor(validation_set[, 1])
response = (y_act == y_pred)
summary(response)

##Getting Test Results
# importing test data
test_data = read.csv("sd_testing_data.csv")
test_data = test_data[5:55]

# Predicting the Test set results
y_pred_test = predict(classifier, newdata = test_data)

# Exporting Results
# Attaching results to Challenge.csv
challenge = read.csv("challenge.csv")
challenge = challenge[1:2]
challenge = cbind(challenge, y_pred_test)
colnames(challenge) <- c("Subject", "Datafile", "Label")

write.csv(challenge, file = "challenge_final_3.csv")







