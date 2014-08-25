CleanData
=========
Codebook
==================================================================
This is a modification of the "Human Activity Recognition Using Smartphones Dataset" from UCI Machine Learning Repository data set available at "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

The original measurements are in the X_train and X_test data sets. These have 561 columns, each corresponding to a measured/estimated variable. Each row in these corresponds to a single measurement, corresponding to an activity as prescribed in y_train/y_test data sets, for a subject specified in subject_train/subject_test data sets.

The script first combines the original training and test data sets to produce one set of data each for measrements, activity, and subjects:

X_train/X_test --> X (measurements)

y_train/y_test --> y (activities)

subject_train/subject_test --> subject (subjects identification)

In an attempt to present a summarised data set, the script then extracts the estimated means and standard deviations from the measurements data set X, by looking for column names containing the text "mean()" and "std()".   This results in 66 columns of interest.

Then the script gatheres these 66 columns into a new data set, with subject and activity type information added in, producing a 68-column data set.


The tidy data set, XCleaned, is produced from this new data set by calculating the means of each variable grouped by subject and activity type.

The cleaned/tidied data set, XCleaned
=====================================


Important
==========
For clarity, I have retained the original column names, although this is not strictly tidy according to class lectures. In addition, each column of data in the tidied data set is a mean for that subject for that type of activity. For example,"tBodyAcc-mean()-X" in the original data set describes a single measurement for a single subject for a single activity, whereas the same variable name in the tidied data set describes the mean of all estimated "tBodyAcc-mean()-X" values  for that  subject for that particular activity. This was deliberately done to avoid introducing 66 new variable names.


The cleaned data set, XCleaned, is a 180x68-dimensional table.

The 180 rows correspond to 6 activity types for each of the 30 subjects identified by numbers 1 through 30. The activity types are coded, as in the original data set, as shown below.

For each subject and each activity, there are 66 values (columns) representing the mean of the corresponding estimated means and standard deviations 

Column 1 
========
"subject" - describes the subject identified as an integer (1 to 30)

Column 2
========
"ActivityType" - the activity type as specified in the original data set:

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

Columns 3 to 68 (Please refer to original data set's "features_info.txt" file for detailed descriptions - variables starting with t are normalised means in time domain, and those starting with f are in frequency domain)
===============

 [3] "tBodyAcc-mean()-X"   (This is the mean of "tBodyAcc-mean()-X" values for a subject/activity pair - same comment applies to all the following variables)
        
 [4] "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"          
 [6] "tGravityAcc-mean()-X"       
 [7] "tGravityAcc-mean()-Y"       
 [8] "tGravityAcc-mean()-Z"       
 [9] "tBodyAccJerk-mean()-X"      
[10] "tBodyAccJerk-mean()-Y"      
[11] "tBodyAccJerk-mean()-Z"      
[12] "tBodyGyro-mean()-X"         
[13] "tBodyGyro-mean()-Y"         
[14] "tBodyGyro-mean()-Z"         
[15] "tBodyGyroJerk-mean()-X"     
[16] "tBodyGyroJerk-mean()-Y"     
[17] "tBodyGyroJerk-mean()-Z"     
[18] "tBodyAccMag-mean()"         
[19] "tGravityAccMag-mean()"      
[20] "tBodyAccJerkMag-mean()"     
[21] "tBodyGyroMag-mean()"        
[22] "tBodyGyroJerkMag-mean()"    
[23] "fBodyAcc-mean()-X"          
[24] "fBodyAcc-mean()-Y"          
[25] "fBodyAcc-mean()-Z"          
[26] "fBodyAccJerk-mean()-X"      
[27] "fBodyAccJerk-mean()-Y"      
[28] "fBodyAccJerk-mean()-Z"      
[29] "fBodyGyro-mean()-X"         
[30] "fBodyGyro-mean()-Y"         
[31] "fBodyGyro-mean()-Z"         
[32] "fBodyAccMag-mean()"         
[33] "fBodyBodyAccJerkMag-mean()" 
[34] "fBodyBodyGyroMag-mean()"    
[35] "fBodyBodyGyroJerkMag-mean()"
[36] "tBodyAcc-std()-X"           
[37] "tBodyAcc-std()-Y"           
[38] "tBodyAcc-std()-Z"           
[39] "tGravityAcc-std()-X"        
[40] "tGravityAcc-std()-Y"        
[41] "tGravityAcc-std()-Z"        
[42] "tBodyAccJerk-std()-X"       
[43] "tBodyAccJerk-std()-Y"       
[44] "tBodyAccJerk-std()-Z"       
[45] "tBodyGyro-std()-X"          
[46] "tBodyGyro-std()-Y"          
[47] "tBodyGyro-std()-Z"          
[48] "tBodyGyroJerk-std()-X"      
[49] "tBodyGyroJerk-std()-Y"      
[50] "tBodyGyroJerk-std()-Z"      
[51] "tBodyAccMag-std()"          
[52] "tGravityAccMag-std()"       
[53] "tBodyAccJerkMag-std()"      
[54] "tBodyGyroMag-std()"         
[55] "tBodyGyroJerkMag-std()"     
[56] "fBodyAcc-std()-X"           
[57] "fBodyAcc-std()-Y"           
[58] "fBodyAcc-std()-Z"           
[59] "fBodyAccJerk-std()-X"       
[60] "fBodyAccJerk-std()-Y"       
[61] "fBodyAccJerk-std()-Z"       
[62] "fBodyGyro-std()-X"          
[63] "fBodyGyro-std()-Y"          
[64] "fBodyGyro-std()-Z"          
[65] "fBodyAccMag-std()"          
[66] "fBodyBodyAccJerkMag-std()"  
[67] "fBodyBodyGyroMag-std()"     
[68] "fBodyBodyGyroJerkMag-std()" 