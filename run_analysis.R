
## Read in the training data set. We are assuming that the data is
## in subdirectories of the working directory, exactly as results
## when the original UCI data is unzipped
X_train<-read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
y_train<- read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
subject_train<-read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

## Read in the test data set 
X_test<-read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
y_test<- read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
subject_test<-read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

## Read in the features - these contain the column names for X_train and X_test
features<-read.csv("UCI HAR Dataset/features.txt", sep="",header=FALSE)

## combine the X_train and X_test as well as y_train and y_test data sets
X<-rbind(X_train,X_test)
y<- rbind(y_train, y_test)

## combine train and test subjects data
subjects<-rbind(subject_train, subject_test)

## Check that dimensions of combined data sets are as expected
## You could use assert_that() if you load "assertthat" library
stopifnot( dim(X)[1]==dim(X_train)[1]+dim(X_test)[1], 
           dim(X)[2]==dim(X_train)[2],
           dim(y)[1]==dim(y_train)[1]+dim(y_test)[1],
           dim(y)[2]==1,
           dim(subjects)[1]==dim(subject_train)[1]+dim(subject_test)[1],
           dim(subjects)[2]==1,
           dim(features)[1]==dim(X)[2])
##

## Adjust a few column names to make data more readable
colnames(features)=c("feature_col_num", "feature_name")
colnames(subjects)="subject"
colnames(y)="ActivityType"

## Now we find indices of mean and std columns in the features 
meansIndex<-grep("mean\\(\\)", features$feature_name)
stdIndex<- grep("std\\(\\)", features$feature_name)

## Construct new data frame culling only columns we need to keep (mean and std values of measurements)
X2<-X[,c(meansIndex,stdIndex)]
colnames(X2)<-c(as.character(features[meansIndex,2]),as.character(features[stdIndex,2]))

## Add the subject and activity type columns to the mean/std variables data frame
X3<-cbind(subjects,y,X2)

## We use dplyr library to summarise by subject and activity type
library(dplyr)
XCleaned<- X3 %.% group_by(subject,ActivityType) %.% summarise_each(funs(mean))

## Ideally we should change the column names to say that we are summarising via means, and optionally get rid of 
## special characters such as "-" and "()", but I have chosen to keep the original names because I felt they
## are quite brilliantly descriptive. 


write.csv(XCleaned,"XCleaned.csv", row.names=FALSE)
