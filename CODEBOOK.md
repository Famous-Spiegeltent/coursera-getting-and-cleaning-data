# Course Project for Getting and Cleaning Data
# Code Book for run_analysis.R

##### Description of data files used:

1. X_train.txt
   Training set containing 7352 observations of the 561 features for 21 volunteers
2. y_train.txt
   Training labels corresponding to a vector of 7352 integers denoting the ID of the activity associated with each observation in X_train.txt   
3. X_test.txt
   Test set containing 2947 observations of the 561 features for 9 volunteers
4. y_test.txt
   Training labels corresponding to a vector of 2947 integers denoting the ID of the activity associated with each observation in X_test.txt
5. subject_train.txt
   Subject IDs corresponding to a vector of 7352 integers denoting the IDs of the volunteers who performed the activities in X_train.txt
6. subject_test.txt
   Subject IDs corresponding to a vector of 2947 integers denoting the IDs of the volunteers who performed the activities in X_test.txt
7. features.txt
   Names of 561 features
8. activity_labels.txt
   IDs and names of 6 activities

##### Description of variables used in the script
1. trainingSet to read X_train.txt
2. trainingLabels to read y_train.txt
3. testSet to read X_test.txt
4. testLabels to read y_test.txt


##### The R script takes the following steps:
1. Read the training and test data sets.
2. Merge the training and test data sets to create one data set.
3. Extract mean and standard deviation values for each measurement.
4. Use descriptive activity names to label the activities.
5. Label the data set with descriptive variable names.
6. Create a tidy data set with an average of each variable for each activity and each subject.

##### The output of this R code is a tidy data set (tidyData.txt and tidyData.csv). More details about the data set and the variables can be found in the code book.
