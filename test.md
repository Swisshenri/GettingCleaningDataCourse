# CodeBook
Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. This is the code book that describes the variables, the data, and any transformations or work  performed to clean up the data.

1. Data Collection Description

The data supplied is the following:

1.1) "Features.txt": Is a file containing all the mesurement types/variables used. It shows information about the variables used on the feature vector.  It has two columns: Number and the description of the feature / variables. There are 561 measurement variables. Eg. of the first 10 rows. ( This is a copy of View () command on the file content)

	
	
	IMPORTANT NOTE:
	Change these two commands to your actual working directory (the following is my case only)
	
		








1
1
tBodyAcc-mean()-X
2
2
tBodyAcc-mean()-Y
3
3
tBodyAcc-mean()-Z
4
4
tBodyAcc-std()-X
5
5
tBodyAcc-std()-Y
6
6
tBodyAcc-std()-Z
7
7
tBodyAcc-mad()-X
8
8
tBodyAcc-mad()-Y
9
9
tBodyAcc-mad()-Z
10
10
tBodyAcc-max()-X

	>setwd("~/Documents/JOHN HOPKINS UNIV/MONTH 03 Get&CleanData/UCI HAR Dataset")
	>workDir <- "~/Documents/JOHN HOPKINS UNIV/MONTH 03 Get&CleanData/UCI HAR Dataset"

  
	
	2.	Run source("run_analysis.R") to execute the analysis
	3.	Find a new file called "Clean_File2.csv" in your working directory

Dependencies
R needs to be installed on your environment. There no other dependencies for this project.


