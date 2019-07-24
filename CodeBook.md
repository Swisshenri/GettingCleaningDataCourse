CodeBook
Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. This is the code book that describes the variables, the data, and any transformations or work  performed to clean up the data.

1. Data Collection Description

The data supplied is the following:

1.1) "Features.txt": Is a file containing all the mesurement types/variables used. It shows information about the variables used on the feature vector.  It has two columns: Number and the description of the feature / variables. There are 561 measurement variables. Eg. of the first 10 rows. ( This is a copy of View () command on the file content)


  | 1	|  tBodyAcc-mean()-X|
  | 2	|  tBodyAcc-mean()-Y|
  | 3	|  tBodyAcc-mean()-Z|
  | 4	|  tBodyAcc-std()-X |
  | 5	|  tBodyAcc-std()-Y |
  | 6	|  tBodyAcc-std()-Z |
  | 7	|  tBodyAcc-mad()-X |
  | 8	|  tBodyAcc-mad()-Y |
  | 9	|  tBodyAcc-mad()-Z |
  |10	|  tBodyAcc-max()-X |
  |Showing 1 to 10 of 561 entries, 2 total columns|

	
1.2) "Activity_labels.txt". It describes the activity performed. Links the class labels with their activity name. The file has six entries with two columns. Number of activity and the activity description:

  1	WALKING
  2	WALKING_UPSTAIRS
  3	WALKING_DOWNSTAIRS
  4	SITTING
  5	STANDING
  6	LAYING

1.3) "X_train" is a file containing all the training set numbers. Ithas 561 columns (correspond to the measurements for ea. of the features per column) and 7352 rows. (Just showing 5 columns and 6 rows) 
	

  0.28858451	-0.020294171	-0.13290514	-0.9952786	-0.98311061
  0.27841883	-0.016410568	-0.12352019	-0.9982453	-0.97530022
  0.27965306	-0.019467156	-0.11346169	-0.9953796	-0.96718701
  0.27917394	-0.026200646	-0.12328257	-0.9960915	-0.98340270
  0.27662877	-0.016569655	-0.11536185	-0.9981386	-0.98081727
  0.27719877	-0.010097850	-0.10513725	-0.9973350	-0.99048681
  Showing 1 to 6 of 7,352 entries, 561 total columns

1.4) "y_train" is a file containing 7532 entries and 1 column and corresponds to the training labels numbers. In other words it corresponds to the activities as per file "activity_labels.txt" a 5 in the example would mean "STANDING".

  5
  5
  5
  5
Showing 1 to 4 of 7,352 entries, 1 total columns

1.5) "Subject_train" contains the train data of the aproximately 30 volunteer subjects being observed. It links to the other "_train files" because it also has 1 column and 7532 entries. 1 in the example corresponds to volunteer number "1".

  1
  1
  1
  1
  1
Showing 1 to 5 of 7,352 entries, 1 total columns


1.6) X_test. Is the test set of numbers. It has 2947 rows and 561 columns. 


1
0.2571778
-0.0232852300
-0.01465376

Showing 1 to 11 of 2,947 entries, 561 total columns


1.7) "y_test" are the test labels  y_test is a file containing 2947 entries and 1 column and corresponds to the test labels numbers. In other words it corresponds to the activities as per file "activity_labels.txt" a 5 in the example would mean "STANDING". This file is related to the test measurements thus 2947 entries as per X_test. Eg.:

  5
  5
  5
  5
  5
  Showing 1 to 5 of 2,947 entries, 1 total columns.  (as per View())


7) "Subject_test". Each row identifies the subject of the aproximately 30 volunteers who performed the activity for each sample.  of the aproximately 30 volunteer subjects being observed. It links to the other "_test files" because it also has 2947 entries. It only has one column ;  2 in the example corresponds to volunteer number "2".Eg:

  2
  2
  2
  2
  2
  
Showing 1 to 5 of 2,947 entries, 1 total columns


2. Data Combination 

2.1) Combine all measurements in one file: X_train and X_test in that order. It generates a new "comb_x_train_test" file with 10299 entries (checks X_test= 2947 and X_train=7352 / 2947+7352 = 10299) measurements and 561 columns. Previously the column names using the file "Features.txt" have been incorporated.

tBodyAcc.mean...X tBodyAcc.mean...YtBodyAcc.mean...ZtBodyAcc.std...XtBodyAcc.std...Y
  0.28858451	  -0.020294171	    -0.13290514	    -0.9952786	      -0.98311061
  0.27841883	  -0.016410568	    -0.12352019	    -0.9982453	      -0.97530022
  0.27965306	  -0.019467156	    -0.11346169	    -0.9953796	      -0.96718701
  0.27917394	  -0.026200646	    -0.12328257	    -0.9960915	      -0.98340270
  0.27662877	  -0.016569655	    -0.11536185	    -0.9981386	      -0.98081727

  Showing 1 to 5 of 10,299 entries, 1 total columns


2.2) Combine the test labels numbers. As per the activities in "activity_labels.txt" a 5 in the example would mean "STANDING". "y_train" and "y_test" are combined in that order. Creating a file with 10299 entries and 1 column.10299 entries (checks y_train=7352 and y_test= 2947 =  10299).   
	
y_cod
  5
  5
  5
  5
  5
  5
Showing 1 to 6 of 10,299 entries, 1 total columns


2.3) Combine all subjects/ volunteers in one file: It also creates a file of 10299. (checks subject_train=7352 and subject_test= 2947 =  10299). 

subj
  1
  1
  1
  1
  1
  1  
Showing 1 to 6 of 10,299 entries, 1 total columns


2.3) Combines all files from 2.1 2.2 and 2.3  into one single file that has now two more columns because Subject/volunteer and the activity code (y_cod) has been included thus 561 +2 = 563 columns. Rows are still the same 10299.

subj  y_cod   tBodyAcc.mean...X   tBodyAcc.mean...Y tBodyAcc.mean...Z. .............	
  1	    5	      0.28858451	        -0.020294171	    -0.13290514 . ..
  1	    5	      0.27841883	        -0.016410568	    -0.12352019
  1	    5	      0.27965306	        -0.019467156	    -0.11346169
  1	    5	      0.27917394	        -0.026200646	    -0.12328257
  1	    5	      0.27662877	        -0.016569655	    -0.11536185
  1	    5	      0.27719877	        -0.010097850	    -0.10513725
Showing 1 to 6 of 10,299 entries, 563 total columns

3. Extract relevant data and enhance its description 

3.1) Extract only Mean and Std information. This procedure extracts only the measurements relevant, namely the ones that have "mean"  and "std" in the measurement description. (based on 1.1 "Features.txt"). It extracts only those columns that are relevant. In this case there are 88 columns with such a measure, still 10299 rows (checks).View(extr_mean_std)

  Subject Activity  tBodyacc.mean...X   tBodyacc.mean...Y   tBodyacc.mean...Z
      1	  STANDING	0.28858451	        -0.020294171	      -0.13290514
      1	  STANDING	0.27841883	        -0.016410568	      -0.12352019
      1	  STANDING	0.27965306	        -0.019467156	      -0.11346169
      1	  STANDING	0.27917394	        -0.026200646	      -0.12328257
      1	  STANDING	0.27662877	        -0.016569655	      -0.11536185
      1	  STANDING	0.27719877	        -0.010097850	      -0.10513725
    Showing 1 to 6 of 10,299 entries, 88 total columns


3.2) Appropriately labels the data set with descriptive variable names.  See that "acc" has been converted to "accelerometer" and Activity now is more descriptive instead of 5 is "STANDING"

  Subject Activity  TimeBodyaccelerometer.mean...X  TimeBodyaccelerometer.mean... TimeBodyaccelerometer.mean...Z
      1	  STANDING	    0.28858451	                      -0.020294171	            -0.13290514
      1	  STANDING	    0.27841883	                      -0.016410568	            -0.12352019
      1	  STANDING	    0.27965306	                      -0.019467156	            -0.11346169
      1	  STANDING	    0.27917394	                      -0.026200646	            -0.12328257
      1	  STANDING	    0.27662877	                      -0.016569655	            -0.11536185
      1	  STANDING	    0.27719877	                      -0.010097850	            -0.10513725
    Showing 1 to 6 of 10,299 entries, 88 total columns

4. Create Tidy Data with average for each activity and subject

4.1) First order the data by Subject and Activity.View(groupedata)

Subject Activity  TimeBodyaccelerometer.mean...X  TimeBodyaccelerometer.mean...Y  TimeBodyaccelerometer.mean...Z
    1	  STANDING	          0.28858451	                -0.020294171	                -0.13290514
    1	  STANDING	          0.27841883	                -0.016410568	                -0.12352019
    1	  STANDING	          0.27965306	                -0.019467156	                -0.11346169
    1	  STANDING	          0.27917394	                -0.026200646	                -0.12328257
    1	  STANDING	          0.27662877	                -0.016569655	                -0.11536185
    Showing 1 to 5 of 10,299 entries, 88 total columns

4.2) Lastly summarize by Activity and Subject, a tidy data set with the average of each variable for each activity and each subject ("sum_ea_data").

Subject Activity    TimeBodyaccelerometer.mean...X  TimeBodyaccelerometer.mean...Y  TimeBodyaccelerometer.mean...Z
    1	  LAYING	            0.2215982	                    -0.040513953	                  -0.11320355
    1	  SITTING	            0.2612376	                    -0.001308288	                  -0.10454418
    1	  STANDING	          0.2789176	                    -0.016137590	                  -0.11060182
    1	  WALKING	            0.2773308	                    -0.017383819	                  -0.11114810
    1	  WALKING_DOWNSTAIRS	0.2891883	                    -0.009918505	                   -0.10756619
  Showing 1 to 5 of 180 entries, 88 total columns


4.3) Write to a new "clean" file Called "Tidy_data_set.csv". Extract of the file on disk: (read in Excel/ only 5 columns out of 88) 

Subject	Activity	TimeBodyaccelerometer.mean...X	TimeBodyaccelerometer.mean...Y	TimeBodyaccelerometer.mean...Z
1	LAYING	0.22159824394	-0.0405139534294	-0.11320355358
1	SITTING	0.261237565425532	-0.00130828765170213	-0.104544182255319
1	STANDING	0.278917629056604	-0.0161375901037736	-0.110601817735849
1	WALKING	0.277330758736842	-0.0173838185273684	-0.111148103547368
1	WALKING_DOWNSTAIRS	0.289188320408163	-0.00991850461020408	-0.107566190908163
1	WALKING_UPSTAIRS	0.255461689622641	-0.0239531492643396	-0.0973020020943396
2	LAYING	0.281373403958333	-0.0181587397583333	-0.107245610416667
2	SITTING	0.27708735173913	-0.0156879937282609	-0.109218272456522
2	STANDING	0.277911472222222	-0.0184208270166667	-0.105908536055556
2	WALKING	0.276426586440678	-0.0185949199145763	-0.105500357966102
2	WALKING_DOWNSTAIRS	0.27761534806383	-0.0226614158361702	-0.116812942382979
2	WALKING_UPSTAIRS	0.247164790395833	-0.0214121132045833	-0.152513899520833
3	LAYING	0.275516852741935	-0.0189556785048387	-0.101300477506452
3	SITTING	0.257197599134615	-0.00350299841730769	-0.0983579203269231
3	STANDING	0.280046513278689	-0.0143376555065574	-0.101621722633148
3	WALKING	0.275567462068966	-0.0171767844203448	-0.112674859827586
3	WALKING_DOWNSTAIRS	0.292423484693878	-0.0193554079328571	-0.116139842908163
3	WALKING_UPSTAIRS	0.260819873067797	-0.0324109410555932	-0.110064863437288
4	LAYING	0.263559214981481	-0.0150031841055556	-0.110688150314815
4	SITTING	0.27153827992	-0.007163065158	-0.10587459588
4	STANDING	0.280499745892857	-0.00948911098553571	-0.0961574905535714
4	WALKING	0.278582015166667	-0.0148399475341667	-0.11140306485
4	WALKING_DOWNSTAIRS	0.279965329555556	-0.00980200850666667	-0.1067775246
4	WALKING_UPSTAIRS	0.270876696730769	-0.0319804295729615	-0.114219455519231
5	LAYING	0.278334325576923	-0.0183042123269231	-0.107937603673077
5	SITTING	0.273694139545455	-0.00990083527045455	-0.108540300265909
5	STANDING	0.282544390892857	-0.00700418554517857	-0.102171095696429
5	WALKING	0.27784234625	-0.0172850317482679	-0.107741776464286
5	WALKING_DOWNSTAIRS	0.29354392712766	-0.00850107533191489	-0.100319930659574
5	WALKING_UPSTAIRS	0.268459469914894	-0.0325269755153191	-0.107471453914894





