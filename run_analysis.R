## Read training set and labels
trainingSet <- read.table("X_train.txt")
trainingLabels <- read.table("y_train.txt")

## Read test set and labels
testSet <- read.table("X_test.txt")
testLabels <- read.table("y_test.txt")

## Read files containing subjects who performed activities
trainingSubject <- read.table("subject_train.txt")
testSubject <- read.table("subject_test.txt")

## Rename columns in the subject files
names(trainingSubject) <- c("SubjectID")
names(testSubject) <- c("SubjectID")

## Rename columns in the training and test sets
features <- read.table("features.txt")
names(trainingSet) <- features$V2
names(testSet) <- features$V2

# Rename columns in the training and test labels
names(trainingLabels) <- c("Activity")
names(testLabels) <- c("Activity")

# Merge the training and test sets
training <- cbind(trainingSubject, trainingLabels, trainingSet)
test <- cbind(testSubject, testLabels, testSet)
twoSets <- rbind(training, test)

## Determine columns containing mean and standard deviation for each measurement
meanAndstd <- grepl("mean\\(\\)", names(twoSets)) | grepl("std\\(\\)", names(twoSets))

## Extract mean and standard deviation for each measurement
twoSets <- twoSets[, meanAndstd]

## Put SubjectID and Activity columns back to the extracted data set
subjectID <- rbind(trainingSubject, testSubject)
activity <- rbind(trainingLabels, testLabels)
twoSets <- cbind(subjectID, activity, twoSets)

## Label activities according to "activity_labels.txt"
activityLabels <- read.table("activity_labels.txt")
activityLabels$V2 <- as.character(activityLabels$V2)
twoSets$Activity <- factor(twoSets$Activity, labels = activityLabels$V2)

## Load "reshape2" package to use melt and dcast functions
library(reshape2)

## Create a tidy data set with average of each variable for each activity and each subject
getTidy <- melt(twoSets, id = c("SubjectID","Activity"))
tidyData <- dcast(getTidy, SubjectID + Activity ~ variable, mean)

## Write a tidy data set as txt and csv files
write.table(tidyData, "tidyData.txt", row.names = FALSE)
write.csv(tidyData, "tidyData.csv", row.names = FALSE)