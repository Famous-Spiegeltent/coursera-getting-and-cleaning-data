# Course Project for Getting and Cleaning Data

##### The objective of this project is to obtain, work with, and clean a data set to prepare a tidy data set that can be used for analysis later.

##### Here are the required steps before you run the R script(run_analysis.R):

1. Download the data file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Put the following files in the working directory:
   * X_train.txt
   * y_train.txt
   * X_test.txt
   * y_test.txt
   * subject_train.txt
   * subject_test.txt
   * features.txt
   * activity_labels.txt
3. Install **reshape2** package.

##### The R script takes the following steps:
1. Read the training and test data sets.
2. Merge the training and test data sets to create one data set.
3. Extract mean and standard deviation values for each measurement.
4. Use descriptive activity names to label the activities.
5. Label the data set with descriptive variable names.
6. Create a tidy data set with an average of each variable for each activity and each subject.

##### The output of this R code is a tidy data set (tidyData.txt and tidyData.csv). More details about the data set and the variables can be found in the code book.
