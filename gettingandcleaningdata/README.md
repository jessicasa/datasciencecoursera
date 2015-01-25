##Coursera Getting and Cleaning Data Course Project
###Author: Jessica Sahl
##Purpose of the Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing. The data for this project were obtained from Human Activity Recognition Using Smartphones Dataset Version 1.0 (Authors: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto). A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Goal of the Project
You should create one R script called run_analysis.R that does the following.
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement.
*Uses descriptive activity names to name the activities in the data set.
*Appropriately labels the data set with descriptive activity names.
*Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Steps to Reproduce the Project

Open the R script run_analysis.r using a text editor.

Tidy dataset file DatasetHumanActivityRecognitionUsingSmartphones.txt (tab-delimited text)
Codebook file codebook.md (Markdown)





Regardless of the form you choose, the strategic way of approaching the question (in a learning to do peer assignments to maximise your marks kind of way) is:
* In the submission box, as well as the link, put some accompanying text on another line something like "tidy data as per the ReadMe that can be read into R with read.table {listing any settings you have changed from the default}" This is just to make it really easy for your reviewer.
* In the readMe in explaining what the script does put "and then generates a tidy data text file that meets the principles of ...etc"
* the truly cunning may want to put in a citation to this discussion and/or Hadley's paper
* The codebook still has the specific description of the tidy data file contents (and you mention that it exists and it's role in the ReadMe)
* If things are part of the same set they should actually have the same units (by definition). OTOH all the assignment data has been normalised.
* People sometimes are interested in dividing up the measurement into a set of columns, dividing up labels is actually a little different to dividing up data- you will find you are introducing a lot of NA values if you try this, which is generally a sign that the approach isn't working.


Table 1 reorganizes raw data to make the values, variables and observations more clear. The
dataset contains ? values representing three variables and ?? observations. The variables
are:
1. Subjects, with ? possible values (John Smith, Mary Johnson, and Jane Doe).
2. Activities, with ? possible values (a and b).
3. Readings, with ? values depending on how you think of the missing value (|,
16, 3, 2, 11, 1).
