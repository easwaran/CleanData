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


The tidy data set, XCleand, is produced from this new data set by calculating the means of each variable grouped by subject and activity type.

The cleaned/tidied data set, XCleaned
=====================================


Important
==========
For clarity, I have retained the original column names, although this is not strictly tidy according to class lectures. In addition, each column of data in the tidied data set is a mean for that subject for that type of activity. For example,"tBodyAcc-mean()-X" in the original data set describes a single measurement for a single subject for a single activity, whereas the same variable name in the tidied data set describes the mean of all estimated "tBodyAcc-mean()-X" values  for that  subject for that particular activity. This was deliberately done to avoid introducing 66 new variable names.


The cleaned data set, XCleaned is a 180x68 dimensional table.

The 180 rows correspond to 6 activity types for each of the 30 subjects identified by numbers 1 through 30. The activity types are coded, as in the original data set, as shown below.

For each subject and each activity, there are 66 values (columns) representing the mean of the corresponding estimated means and standard deviations 

Column 1 
========
"subject" - describes the subject identified as a integer (1 to 30)

Column 2
========
"ActivityType" - the activity type as specified in the original data set:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Columns 3 to 68 (Please refer to original data set's "features_info.txt" file for detailed descriptions)
===============

"tBodyAcc-mean()-X" (This is the mean of the "tBodyAcc-mean()-X" values for a subject/activity pair)
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tGravityAcc-mean()-X"       
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tBodyAccJerk-mean()-X"      
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y" 
"tBodyGyroJerk-mean()-X"     
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyAccMag-mean()"         
"tGravityAccMag-mean()"
"tBodyAccJerkMag-mean()"
"tBodyGyroMag-mean()"        
"tBodyGyroJerkMag-mean()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"         
"fBodyGyro-mean()-Z"
"fBodyAccMag-mean()"
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroJerkMag-mean()" 
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            
"tBodyAcc-std()-Z"            
"tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"         
"tGravityAcc-std()-Z"         
"tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        
"tBodyAccJerk-std()-Z"        
"tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"           
"tBodyGyro-std()-Z"           
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       
"tBodyGyroJerk-std()-Z"       
"tBodyAccMag-std()"          
"tGravityAccMag-std()"        
"tBodyAccJerkMag-std()"       
"tBodyGyroMag-std()"         
"tBodyGyroJerkMag-std()"      
"fBodyAcc-std()-X"            
"fBodyAcc-std()-Y"           
"fBodyAcc-std()-Z"            
"fBodyAccJerk-std()-X"        
"fBodyAccJerk-std()-Y"       
"fBodyAccJerk-std()-Z"        
"fBodyGyro-std()-X"           
"fBodyGyro-std()-Y"          
"fBodyGyro-std()-Z"           
"fBodyAccMag-std()"           
"fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-std()"      
"fBodyBodyGyroJerkMag-std()" 


