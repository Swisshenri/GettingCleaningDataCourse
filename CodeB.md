
CODE BOOK MD

Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. This is the code book that describes the variables, the data, and any transformations or work  performed to clean up the data.

1. Data Collection Description

The data supplied is the following:

1.1) &quot;Features.txt&quot;: Is a file containing all the mesurement types/variables used. It shows information about the variables used on the feature vector.  It has two columns: Number and the description of the feature / variables. There are 561 measurement variables. Eg. of the first 10 rows. ( This is a copy of View () of first 10 records on the file content)



| tBodyAcc-mean()-X |
| --- |
| tBodyAcc-mean()-Y |
| tBodyAcc-mean()-Z |
| tBodyAcc-std()-X |
| tBodyAcc-std()-Y |
| tBodyAcc-std()-Z |
| tBodyAcc-mad()-X |
| tBodyAcc-mad()-Y |
| tBodyAcc-mad()-Z |
| tBodyAcc-max()-X |

1.2) &quot;Activity\_labels.txt&quot;. It describes the activity performed. Links the class labels with their activity name. The file has six entries with two columns. Number of activity and the activity description:



| 1 | WALKING |
| --- | --- |
| 2 | WALKING\_UPSTAIRS |
| 3 | WALKING\_DOWNSTAIRS |
| 4 | SITTING |
| 5 | STANDING |
| 6 | LAYING |

1.3) &quot;X\_train&quot; is a file containing all the training set numbers. It has 561 columns (correspond to the measurements for ea. of the features per column) and 7352 rows. (Just showing 3 columns and 3 rows)





|   |
| --- |

| 0.28858451 | -0.0202941710 | -0.13290514 |
| --- | --- | --- |
| 0.27841883 | -0.0164105680 | -0.12352019 |
| 0.27965306 | -0.0194671560 | -0.11346169 |

Showing 1 to 3 of 7,352 entries, 561 total columns



1.4) &quot;y\_train&quot; is a file containing 7532 entries and 1 column and corresponds to the training labels numbers. In other words it corresponds to the activities as per file &quot;activity\_labels.txt&quot; a 5 in the example would mean &quot;STANDING&quot;.

| 5 |
| --- |
| 5 |
| 5 |
| 5 |
| 5 |

Showing 1 to 5 of 7,352 entries, 1 total columns

1.5) &quot;Subject\_train&quot; contains the train data of the aproximately 30 volunteer subjects being observed. It links to the other &quot;\_train files&quot; because it also has 1 column and 7532 entries. 1 in the example corresponds to volunteer number &quot;1&quot;.

| 1 |
| --- |
| 1 |
| 1 |
| 1 |
| 1 |

Showing 1 to 5 of 7,352 entries, 1 total columns



1.6) X\_test. Is the test set of numbers. It has 2947 rows and 561 columns.

| 0.2571778 | -0.0232852300 | -0.01465376 |
| --- | --- | --- |
| 0.2860267 | -0.0131633590 | -0.11908252 |
| 0.2754848 | -0.0260504200 | -0.11815167 |
| 0.2702982 | -0.0326138690 | -0.11752018 |
| 0.2748330 | -0.0278477880 | -0.12952716 |

Showing 1 to 5 of 2,947 entries, 561 total columns



1.7) &quot;y\_test&quot; are the test labels.  &quot;y\_test&quot; is a file containing 2947 entries and 1 column and corresponds to the test labels numbers. In other words it corresponds to the activities as per file &quot;activity\_labels.txt&quot; a 5 in the example would mean &quot;STANDING&quot;. This file is related to the test measurements thus 2947 entries as per X\_test. Eg.:



| 5 |
| --- |
| 5 |
| 5 |
| 5 |
| 5 |



Showing 1 to 5 of 2,947 entries, 1 total columns.

1.8) &quot;Subject\_test&quot;. Each row identifies the subject of the aproximately 30 volunteers who performed the activity for each sample.  of the aproximately 30 volunteer subjects being observed. It links to the other &quot;\_test files&quot; because it also has 2947 entries. It only has one column ;  2 in the example corresponds to volunteer number &quot;2&quot;.Eg:



| 2 |
| --- |
| 2 |
| 2 |
| 2 |
| 2 |

Showing 1 to 5 of 2,947 entries, 1 total columns



2. Data Combination

2.1) Combine all measurements in one file: X\_train and X\_test in that order. It generates a new &quot;comb\_x\_train\_test&quot; file with 10299 entries (checks X\_test= 2947 and X\_train=7352 / 2947+7352 = 10299) measurements and 561 columns. Previously the column names using the file &quot;Features.txt&quot; have been incorporated.



|
**tBodyAcc.mean...X** | **tBodyAcc.mean...Y** | **tBodyAcc.mean...Z** | **tBodyAcc.std...X** |   |
| --- | --- | --- | --- | --- |
|   |   |   |   |   |
| 0.28858451 | -0.0202941710 | -0.13290514 | -0.9952786 |   |
| 0.27841883 | -0.0164105680 | -0.12352019 | -0.9982453 |   |
| 0.27965306 | -0.0194671560 | -0.11346169 | -0.9953796 |   |
| 0.27917394 | -0.0262006460 | -0.12328257 | -0.9960915 |   |
| 0.27662877 | -0.0165696550 | -0.11536185 | -0.9981386 |   |



Showing 1 to 5 of 10,299 entries, 561 total columns



2.2) Combine the test labels numbers. As per the activities in &quot;activity\_labels.txt&quot; a 5 in the example would mean &quot;STANDING&quot;. &quot;y\_train&quot; and &quot;y\_test&quot; are combined in that order. Creating a file with 10299 entries and 1 column.10299 entries (checks y\_train=7352 and y\_test= 2947 =  10299).



| y\_cod |
| --- |
| 5 |
| 5 |
| 5 |
| 5 |
| 5 |

Showing 1 to 5 of 10,299 entries, 1 total columns



2.3) Combine all subjects/ volunteers in one file: It also creates a file of 10299. (checks subject\_train=7352 and subject\_test= 2947 =  10299).

| subj |
| --- |
| 1 |
| 2 |
| 3 |
| 4 |
| 5 |

Showing 1 to 5 of 10,299 entries, 1 total columns



2.3) Combines all files from 2.1 2.2 and 2.3 into one single file that has now two more columns because Subject/volunteer and the activity code (y\_cod) has been included thus 561 +2 = 563 columns. Rows are still the same 10299.

|
**subj** | **y\_cod** | **tBodyAcc.mean...X** | **tBodyAcc.mean...Y** | **tBodyAcc.mean...Z** |   |
| --- | --- | --- | --- | --- | --- |
|   |   |   |   |   |   |
| 1 | 5 | 0.28858451 | -0.0202941710 | -0.13290514 |   |
| 1 | 5 | 0.27841883 | -0.0164105680 | -0.12352019 |   |
| 1 | 5 | 0.27965306 | -0.0194671560 | -0.11346169 |   |
| 1 | 5 | 0.27917394 | -0.0262006460 | -0.12328257 |   |
| 1 | 5 | 0.27662877 | -0.0165696550 | -0.11536185 |   |

Showing 1 to 5 of 10,299 entries, 563 total columns



3. Extract relevant data and enhance its description

3.1) Extract only Mean and Std information. This procedure extracts only the measurements relevant, namely the ones that have &quot;mean&quot;  and &quot;std&quot; in the measurement description. (based on 1.1 &quot;Features.txt&quot;). It extracts only those columns that are relevant. In this case there are 88 columns with such a measure, still 10299 rows (checks).

|
**subj** | **y\_cod** | **tBodyAcc.mean...X** | **tBodyAcc.mean...Y** | **tBodyAcc.mean...Z** |   |
| --- | --- | --- | --- | --- | --- |
|   |   |   |   |   |   |
| 1 | 5 | 0.28858451 | -0.0202941710 | -0.13290514 |   |
| 1 | 5 | 0.27841883 | -0.0164105680 | -0.12352019 |   |
| 1 | 5 | 0.27965306 | -0.0194671560 | -0.11346169 |   |
| 1 | 5 | 0.27917394 | -0.0262006460 | -0.12328257 |   |
| 1 | 5 | 0.27662877 | -0.0165696550 | -0.11536185 |   |

Showing 1 to 5 of 10,299 entries, 88 total columns



3.2) Appropriately labels the data set with descriptive variable names.  See that &quot;acc&quot; has been converted to &quot;accelerometer&quot; and Activity now is more descriptive instead of 5 is &quot;STANDING&quot;



|
**Subject** | **Activity** | **TimeBodyaccelerometer.mean...X** | **TimeBodyaccelerometer.mean...Y** |   |
| --- | --- | --- | --- | --- |
|   |   |   |   |   |
| 1 | STANDING | 0.28858451 | -0.0202941710 |   |
| 1 | STANDING | 0.27841883 | -0.0164105680 |   |
| 1 | STANDING | 0.27965306 | -0.0194671560 |   |
| 1 | STANDING | 0.27917394 | -0.0262006460 |   |
| 1 | STANDING | 0.27662877 | -0.0165696550 |   |

Showing 1 to 5 of 10,299 entries, 88 total columns





4. Create Tidy Data with average for each activity and subject

4.1) First order the data by Subject and Activity.



4.2) Lastly summarize by Activity and Subject, a tidy data set with the average of each variable for each activity and each subject (&quot;sum\_ea\_data&quot;).

|
**Subject** | **Activity** | **TimeBodyaccelerometer.mean...X** | **TimeBodyaccelerometer.mean...Y** |   |
| --- | --- | --- | --- | --- |
|   |   |   |   |   |
| 1 | WALKING\_DOWNSTAIRS | 0.33584724 | 0.0114455620 |   |
| 1 | WALKING\_DOWNSTAIRS | 0.28606480 | 0.0167998170 |   |
| 3 | STANDING | 0.23601277 | -0.0269131440 |   |
| 3 | STANDING | 0.26731751 | -0.0323551790 |   |
| 3 | STANDING | 0.28335241 | -0.0107287030 |   |

Showing 346 to 350 of 10,299 entries, 88 total columns



4.3) Write to a new &quot;clean&quot; file Called Clean\_File. Extract of the file on disk: (read in Excel)

| Subject | Activity | TimeBodyaccelerometer.mean...X | TimeBodyaccelerometer.mean...Y |
| --- | --- | --- | --- |
| 1 | LAYING | 0.22159824394 | -0.0405139534294 |
| 1 | SITTING | 0.261237565425532 | -0.00130828765170213 |
| 1 | STANDING | 0.278917629056604 | -0.0161375901037736 |
| 1 | WALKING | 0.277330758736842 | -0.0173838185273684 |
| 1 | WALKING\_DOWNSTAIRS | 0.289188320408163 | -0.00991850461020408 |
| 1 | WALKING\_UPSTAIRS | 0.255461689622641 | -0.0239531492643396 |
| 2 | LAYING | 0.281373403958333 | -0.0181587397583333 |
| 2 | SITTING | 0.27708735173913 | -0.0156879937282609 |
| 2 | STANDING | 0.277911472222222 | -0.0184208270166667 |
| 2 | WALKING | 0.276426586440678 | -0.0185949199145763 |
| 2 | WALKING\_DOWNSTAIRS | 0.27761534806383 | -0.0226614158361702 |
| 2 | WALKING\_UPSTAIRS | 0.247164790395833 | -0.0214121132045833 |
| 3 | LAYING | 0.275516852741935 | -0.0189556785048387 |
