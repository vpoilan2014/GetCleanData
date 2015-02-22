# GetCleanData
Coursera-Getting and Cleaning Data


To run the script 
source("runAnalysis.r")
runAnalysis()

Input:
-----
From the UCI website - Human Activity Recognition dataset built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Assumptions about the input data:
The runAnalysis.r script assumes that the "UCI HAR dataset" directoryis in the same directory as the script.

Purpose (From the project description):
-------
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Output:
-------
Tidy data set with the average for each feature variable for each activity and each subject
