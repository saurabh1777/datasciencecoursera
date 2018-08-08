A. DATA

features:

data imported from features.txt
contain 2 column and 561 row of data
activityLabel

data set imported from activity_labels.txt
contain 2 column and 6 row of data
subjectTrain :

data imported from subject_train.txt
contain 1 column and 7352 row of data
xTrain - data imported from x_train.txt

yTrain - data imported from y_train.txt

trainSet - dataset obtained by merging yTrain, subjectTrain and xTrain

subjectTest - data imported from subject_test.txt

xTest - data imported from x_test.txt

yTest - data imported from y_test.txt

testSet - dataset obtained by merging yTest, subjectTest and xTest

combineDataSet - dataset obtained by merging trainSet, testSet

columns - column names list of 'combineDataSet'

tidyData - independent tidy data set with the average of each variable for each activity and each subject form 'combineDataSet'

B. VARIABLE

indentifier - vector created to indentify the ID, mean & stddev columns is TRUE from 'combineDataSet'
C. PROCESS ON GETTING TIDY DATA

Read and import data from file to obtain feature, activityLabel, subjectTrain, xTrain, yTrain, subjectTest, xTest and yTest

Assign column name for activityLabel, subjectTrain and subjectTest

Merging data for dataset trainSet, testSet and combineDataSet

Getting the list of column names from 'combineDataSet' and assign it to 'columns'

Cleaning 'combineDataSet' to get only required column which is contain 'activity', 'subject', 'mean' and 'std' by using created vector named 'indentifier'

Rename column name of 'combineDataSet'with descriptive name

Remove column 'activityType'

Summerize data by calculating average value of each variable for each activity and each subject by using aggregate function

Assign summerized data to 'TidyData'

Export 'TinyData' data set to 'TinyData.txt'
