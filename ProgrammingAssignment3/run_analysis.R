library(data.table)

#Download the file

url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename = "getdata.zip"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
#download.file(url, filename)
unzip('getdata.zip')
setwd("C:/Users/ah64717/Desktop/DS Assignments/UCI HAR Dataset")
## Import the test data

X_test<-read.table("test/X_test.txt")
Y_test<-read.table("test/y_test.txt")
subject_test<-read.table("test/subject_test.txt")

## Import the training data
X_train<-read.table("train/X_train.txt")
Y_train<-read.table("train/y_train.txt")
subject_train<-read.table("train/subject_train.txt")

## Task 1) Merge the training and the test sets to create one data set.

## Combine the X data, Y data, and subject row identification into full versions of each
X_full<-rbind(X_test, X_train)
Y_full<-rbind(Y_test, Y_train)
subject_full<-rbind(subject_test, subject_train)

## Now the data frames are joined, it's worth naming the columns in x_full from features.txt
features <- read.table("features.txt")
colnames(X_full)<-features[,2]

## Task 2) Extract only the measurements on the mean and standard deviation for each measurement

## The columns with the desired measurements are labeled using mean() and std() so grepl on the column names
## looking for partial matches will flag them. '|' will create a vector that is true if either is matched.
rightcols<- grepl("mean()",colnames(X_full)) | grepl("std()",colnames(X_full))

## Then putting the new columns in a paired down data frame is simple:
X_mean_std <- X_full[,rightcols]
colnames(X_mean_std)

## Task 3 - 

activities<-read.table("activity_labels.txt")

## While translating Y_full into human readable names I'l also make it a factor.
Y_factor <- as.factor(Y_full[,1])

## mapvalues from the plyr package can do this efficiently. Declaring the library.
library(plyr)

Y_factor <- mapvalues(Y_factor,from = as.character(activities[,1]), to = as.character(activities[,2]))
## Y_factor is now a factor with the 6 named levels, the same length as the height of X_mean_std, so it can be added
## using cbind, putting it first for ease.
X_mean_std <- cbind(Y_factor, X_mean_std)  

## Setting the name of the new first column to "activity" seems helpful too
colnames(X_mean_std)[1] <- "activity"

## I also want a column of subject IDs for later so I'll repeat the process with subject_full

X_mean_std <- cbind(subject_full, X_mean_std)
colnames(X_mean_std)[1] <- "subject"

## X_mean_std should now be a data frame with the subject ids in the first column the activity name in the second 
## and then all the columns of variables that contained mean() and std() in their names.

## Task 5) Creates a second, independent tidy data set with the average of each variable for each activity and each 
## subject. 

## The goal is to take the average for each column of all values where subject and activity are the same, and to
## sort the resulting data so the first six rows are each activity for subject one, then the six for subject two etc.

## This can be done using the reshape functions introduced in the lecture (indebted to David Hood Community TA on the 
## coursera course forum for this suggestion) which requires declaring the library

library(reshape2)

X_melt<- melt(X_mean_std,id.vars=c("subject","activity"))
Xav_tidy <- dcast(X_melt, subject + activity ~ ..., mean)

## Xav_tidy is now the tidy dataset required. Now return it and we're done

##Xav_tidy
write.table(Xav_tidy, "tidy.txt", row.names = FALSE)
