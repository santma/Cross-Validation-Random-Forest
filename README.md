# Cross-Validation-Random-Forest
Using k-Fold Cross Validation to find Optimal number of trees:

I split the dataset into 10 folds for cross validation. 

I then obtained cross validation results for 1:100 trees in a Random Forest Classification

I did this by nesting the 1:100 iterations of the Random Forest algorthim inside a for loop for 10 different validation sets.


**Important note**
I am unsure why this happens, but maybe someone can explain:
In order for the for-loop to work, you need to run it without the indexes (I used [j] for the fold iteration, and [i] 
for random forest. 
Just delete these, run the code first to get a single value result.
Then, re-add the [i] and [j] inside the loops, and then it will work.

If you know why R works like this, let me know. Thanks! 

