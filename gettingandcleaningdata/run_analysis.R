## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Download the Data for the Project
if(!file.exists("courseproject")) {
	dir.create("courseproject")
}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./courseproject/HARdataset.zip", method = "curl")
unzip("./courseproject/HARdataset.zip",exdir = "./courseproject")

## Review README.txt to see how the data match the file
## X files are sets; Y files are activities
## Subject: 30 subjects (integer)
## Activity: 6 activites (factor)
## Features: Domain Signals (Time and Frequency), Acceleration Signal (body, gravity, NA), Sensor Signals (accelerometer, gyroscope), Jerk (Jerk, NA), Magnitude (Mag, NA), Mean or Std, [Axis (X,Y,Z, NA), Count (integer), Average (numeric)]

## Install packages needed to work with the data
install.packages("data.table")
library(data.table)
install.packages("dplyr")
library(dplyr)

## 1. Merge the training and the test sets to create one data set.

## train/X-train.txt: Training Data Set
trainSet <- read.table("./courseproject/UCI HAR Dataset/train/x_train.txt")
dim(trainSet)
## [1] 7352  561

## test/X-test.txt: Test Data Set
testSet <- read.table("./courseproject/UCI HAR Dataset/test/x_test.txt")
dim(testSet)
## [1] 2947  561

## train/Y-train.txt: Training Activity
trainActivity <- read.table("./courseproject/UCI HAR Dataset/train/y_train.txt")
dim(trainActivity)
## [1] 7352    1

## test/Y-test.txt: Test Activity
testActivity <- read.table("./courseproject/UCI HAR Dataset/test/y_test.txt")
dim(testActivity)
## [1] 2947    1

## train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample (70% of sample)
trainSubject <- read.table("./courseproject/UCI HAR Dataset/train/subject_train.txt")
dim(trainSubject)
## [1] 7352    1

## test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample (30% of sample)
testSubject <- read.table("./courseproject/UCI HAR Dataset/test/subject_test.txt")
dim(testSubject)
## [1] 2947    1

##Combine Data Sets, Activity Sets, Subject Sets and Set Variable Names
mergeSets <- rbind(trainSet, testSet)
dim(mergeSets)
##[1] 10299   561
mergeActivities <- rbind(trainActivity, testActivity)
setnames(mergeActivities, "V1", "activitynumber")
dim(mergeActivities)
##[1] 10299     1
mergeSubject <- rbind(testSubject, trainSubject)
setnames(mergeSubject, "V1", "subject")
dim(mergeSubject)
##[1] 10299     1
##Combine all columns
dataMerged <- cbind(mergeActivities, mergeSubject, mergeSets)
dim(dataMerged)
##[1] 10299   563

## 2. Extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("./courseproject/UCI HAR Dataset/features.txt")
dim(features)
##[1] 561   2
setnames(features, names(features), c("featurenumber", "featurename"))
features <- data.table(features)
features <- features[grepl("mean\\(\\)|std\\(\\)", featurename)]

##Clean up feature names
features$featurename <- tolower(gsub("-", "", features$featurename))
features$featurename <- gsub("\\(\\)", "", features$featurename)
features$featurename <- sub("bodybody","body", features$featurename)
features$featurevariable <- features[, paste0("V", featurenumber)]
dim(features)
##[1] 66  3
mergeSets <- mergeSets[, features$featurenumber]
##Merge Columns
dataMerged <- cbind(mergeSubject, mergeActivities, mergeSets)
dim(dataMerged)
##[1] 10299   68


## 3. Use descriptive activity names to name the activities in the data set.
activityLabels <- read.table("./courseproject/UCI HAR Dataset/activity_labels.txt")
setnames(activityLabels, names(activityLabels), c("activitynumber", "activityname"))
activityLabels$activityname <- tolower(gsub("_", "", activityLabels$activityname))
dataMerged <- merge(dataMerged, activityLabels, by = "activitynumber", all.x=TRUE)
dim(dataMerged)
##[1] 10299   69

## 4. Appropriately label the data set with descriptive variable names.
featurenameList <- as.character(features$featurename)
names(dataMerged) <- c("activitynumber", "subject", featurenameList, "activityname")
names(dataMerged)
dim(dataMerged)
##[1] 10299    69

#Organize dataMerged
dataMerged <- arrange(dataMerged, subject)
dataMerged2 <- group_by(dataMerged, subject, activityname) %>% summarise_each(funs(mean))
dim(dataMerged2)
##[1] 180  69
## 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(dataMerged2, file="./courseproject/tidydata.txt", row.names=FALSE)