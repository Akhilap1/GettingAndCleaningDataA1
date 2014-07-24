#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

returnTidydata <- function ()
{
  library("data.table")
  
 # Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 # destFile <- "SamsungData.zip"
 # download.file(url=Url, destfile=destFile)

 # unzip (destFile, overwrite= TRUE)
  
  test_data <- read.csv("UCI HAR dataset/test/X_test.txt", sep="", header=FALSE)
  train_data <- read.csv("UCI HAR dataset/train/X_train.txt", sep="", header=FALSE)
  
  test_labels <- read.csv("UCI HAR dataset/test/y_test.txt", sep="", header=FALSE)
  train_labels <- read.csv("UCI HAR dataset/train/y_train.txt", sep="", header=FALSE)
  
  test_subjects <- read.csv("UCI HAR dataset/test/subject_test.txt", sep="", header=FALSE)
  train_subjects <- read.csv("UCI HAR dataset/train/subject_train.txt", sep="", header=FALSE)
  
  colnames <- read.csv("UCI HAR dataset/features.txt", sep="", header=FALSE)
  label_names <- read.csv("UCI HAR dataset/activity_labels.txt", sep="", header=FALSE)
  
  colnames(test_data) <- colnames$V2
  colnames(train_data) <- colnames$V2

  test_data$subject <- test_subjects$V1
  train_data$subject <- train_subjects$V1
  
  test_data$activity <- test_labels$V1 
  train_data$activity <- train_labels$V1
  
  
  #Merges the training and the test sets to create one data set.
  complete_set <- rbind(train_data, test_data)
 

  #Extracts only the measurements on the mean and standard deviation for each measurement. 
  mean_std_cols <- colnames[grep("-mean[:():]|-std[:():]", colnames$V2),]
  complete_set_means <- complete_set[,colnames(complete_set) %in% mean_std_cols$V2]
  
  
  #Uses descriptive activity names to name the activities in the data set
  complete_set_means$activity <- label_names[complete_set$activity,2]
  complete_set_means$subject <-  complete_set$subject
  
  #Appropriately labels the data set with descriptive variable names. 
  #-- already done when the test and train sets were loaded
  
  aggregate_set <- aggregate(complete_set_means[,colnames(complete_set_means) %in% mean_std_cols$V2],list(complete_set_means$activity, complete_set_means$subject), mean)

  colnames(aggregate_set)[1] <- "Activity"
  
  colnames(aggregate_set)[2] <- "Subject Id"

  colnames(aggregate_set) <- str_replace_all(colnames(aggregate_set), "[:():]", "")

  colnames(aggregate_set) <- paste(colnames(aggregate_set), "- MEAN")
 
  write.csv(as.data.frame(aggregate_set), "tidyData.csv")
 
  aggregate_set
}
