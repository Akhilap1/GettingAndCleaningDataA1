Course Project for "Getting and Cleaning Data" - coursera.org
-------------------------------------------------------------

This repo is created for the above mentioned course/assigment.


Repository contents include

1. Readme.md- this


2. run_analysis.R - R script file to generate a tidy set based on details provided below.

Manual processing: Data for this project is downloaded from the following URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Save the zip file and unzip it into the folder named UCI HAR dataset.

The run_analysis.R script created will run from the folder where the data was unzipped. (the parent folder of UCI HAR dataset)
Reads the training data from UCI HAR dataset/train/X_train.txt
Reads the test data from UCI HAR dataset/train/X_train.txt
Reads teh labels for test and training data from UCI HAR dataset/test/y_test.txt and UCI HAR dataset/train/y_train.txt
Merges the training and the test sets to create one data set.
Uses descriptive activity names to name the activities in the data set- from the labels provided in activity_labels.txt
Appropriately labels the data set with descriptive variable names from features.txt
Extracts only the measurements on the mean and standard deviation for each measurement- getting only those colnames which are mean() or std() 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject using the aggregate function.
Copies the tidy set into TidyData.csv
Returns the tidy set dataframe object

More information about the data and the various files downloaded can be viewed at:
https://class.coursera.org/getdata-005/human_grading/view/courses/972582/assessments/3/submissions
