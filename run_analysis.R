## Getting and cleaning Data Excercise Script



## 1) FIRST STEP GET DATA / Prepare
## 
## First download the file to a directory within my computer "UCI HAR Dataset/"
## I tell R_studio to set working directory to that dir
## Then I create working data tables to work with the data for each file 
## 
## the character "~" is my root directory by default
## workDir is where I place the subdirectory with the files
## except for "features" and "activity_labels" files in the specific working directory 
## 

setwd("~/Documents/JOHN HOPKINS UNIV/MONTH 03 Get&CleanData/UCI HAR Dataset")

workDir <- "~/Documents/JOHN HOPKINS UNIV/MONTH 03 Get&CleanData/UCI HAR Dataset"


## Read files into working tables with same names:

features <- read.table("features.txt", col.names = c("n","vars"))

activity_labels <- read.table("activity_labels.txt",col.names = c("num_activity","type_activity"))

subject_test <- read.table(paste(workDir,"/test/subject_test.txt",sep=""), col.names = "subj")



x_test <- read.table(paste(workDir,"/test/X_test.txt", sep=""), col.names = features$vars)

## put column names based on file previously read namely "Features" and column "functions"

## colnames(x_test) <- features$vars

## Could have written it like this too (one line): 
## x_test <- read.table(paste(workDir,"/test/X_test.txt",sep=""), )  


y_test <- read.table(paste(workDir,"/test/y_test.txt", sep=""), col.names = "y_cod")

subject_train <- read.table(paste(workDir,"/train/subject_train.txt", sep=""), col.names = "subj")

x_train <- read.table(paste(workDir,"/train/X_train.txt", sep=""), col.names = features$vars)

y_train <- read.table(paste(workDir,"/train/y_train.txt", sep=""), col.names = "y_cod")



## 2) MERGE FILES 
## "Merges the training and the test sets to create one data set"
## Merges first x Training and test data sets
## Then merges y Training and test data sets + subject data sets
## lastly combines full all together 563 Columns "Subject Code and 561 Columns from features

comb_x_train_test <- rbind(x_train, x_test)
comb_y_train_test <- rbind(y_train, y_test)

subj_train_test <- rbind(subject_train, subject_test)
combined_full_subj_x_y <- cbind(subj_train_test, comb_y_train_test, comb_x_train_test)



## 3) EXTRACT
## Extracts only the measurements on the mean and standard deviation for each measurement.

## load the "dplyr" package to use "select" function to simplify
## only select columns that contain the strings "mean" and "std"
## the other way is more complicated using grepl function but.. 
## eg..extr1 <- combined_full_subj_x_y[ , grepl("mean" , names(combined_full_subj_x_y) ) ]
## eg..extr2 <- combined_full_subj_x_y[ , grepl("std" , names(combined_full_subj_x_y) ) ]
## etc..

install.packages("dplyr")
library(dplyr)

extr_mean_std <- combined_full_subj_x_y %>% select(subj, y_cod, contains("mean"), contains("std"))


## 4) NAME ACTIVITIES AND EXPAND IN THE DESCRIPTION OF THE FEATURES

## Name the activities in the data set remember "y_cod" is the variable/column in my table
## that describes the code it is just a number, we need know to replace it with a words
## it basically replaces each y_cod or code number with the corresponding "description"  
##      from the activity_labels table in the extracted full combined file

extr_mean_std$y_cod <- activity_labels[extr_mean_std$y_cod, 2]

## Now change the label/ Title (is 2nd column thus [2])

names(extr_mean_std)[2] = "activity"

##  Expand on the Description of some of the Features
##  Appropriately labels the data set with descriptive variable names.
##  Replace for example "t" for time and so on

names(extr_mean_std)<-gsub("activity", "Activity", names(extr_mean_std))
names(extr_mean_std)<-gsub("subj", "Subject", names(extr_mean_std))
names(extr_mean_std)<-gsub("^t", "Time", names(extr_mean_std))
names(extr_mean_std)<-gsub("^f", "Frequency", names(extr_mean_std))
names(extr_mean_std)<-gsub("Mag", "magnitude", names(extr_mean_std))
names(extr_mean_std)<-gsub("Acc", "accelerometer", names(extr_mean_std))
names(extr_mean_std)<-gsub("Gyro", "gyroscope", names(extr_mean_std))
names(extr_mean_std)<-gsub("angles", "Angles", names(extr_mean_std))



## 5) GROUP BY ACTIVITY AND SUBJECT Now finally

##From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject 

## Group by Activity and Subject
groupedata <- group_by(extr_mean_std,Subject, Activity)

 

## average of each variable for each 


sum_ea_data <- summarise_each(groupedata, funs(mean))


## arrange(sum_ea_data,Subject, Activity)

## Create a file with final result


write.table(sum_ea_data, "Tidy_data_set.csv", sep=",", row.names = FALSE)


