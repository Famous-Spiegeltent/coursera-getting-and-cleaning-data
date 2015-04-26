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

##### Processing steps in the script:
1. Read the training and test data sets.
2. Merge the training and test data sets to create one data set.
3. Extract mean and standard deviation values for each measurement.
4. Use descriptive activity names to label the activities.
5. Label the data set with descriptive variable names.
6. Create a tidy data set with an average of each variable for each activity and each subject.

##### Description of the output (tidyData.txt and tidyData.csv)
1. Each subject (volunteer) has 6 rows corresponding 6 different activities.
2. Since there are 30 subjects (volunteers) in total, there are 180 rows in total.
3. Two files, txt and csv files, are created for easy verification of txt file.

