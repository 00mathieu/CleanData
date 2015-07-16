#R script that"
# 1. extracts data and merges into one dataset.
# 2. subset dataset to only get columns that measure mean and sd
# 3. summarises the dataset as mean of each column by subject and activity

#requires the "UCI HAR Dataset" file to be saved in working directory
setwd("G:/People/Mathieu/Papers/coursera/CleanData")

#set wd to location of training dataset
setwd("./UCI HAR Dataset/train")
#load training dataset
x_train<-read.table("X_train.txt", header=FALSE)
y_train<-read.table("y_train.txt", header=FALSE)
subject_train<-read.table("subject_train.txt", header=FALSE)

#set wd to location of testing dataset
setwd("../")
setwd("./test")
x_test<-read.table("X_test.txt", header=FALSE)
y_test<-read.table("y_test.txt", header=FALSE)
subject_test<-read.table("subject_test.txt", header=FALSE)

#set wd to location of column headers and activity labels
setwd("../")
features<-read.table("features.txt", header=FALSE)
activity_labs<-read.table("activity_labels.txt", header=FALSE)
colnames(activity_labs)<-c("activity_code","activity_labels")

#merge training and testing dataframes
data<-rbind(x_train,x_test)
activity_code<-rbind(y_train,y_test)
subject<-rbind(subject_train, subject_test)

#add colunames to dataset
colnames(data)<-features$V2

#add subject to dataset
data$subject<-subject$V1

#add activity code to dataset
data$activity_code<-activity_code$V1

#add activity description to dataset
data<-merge(x=data, y=activity_labs, by="activity_code", all.x = TRUE)

#head(data)

#the following is a list of all the cols that have mean or sd in them
mean_sd_cols<-c("tBodyAcc-mean()-X",
                "tBodyAcc-mean()-Y",
                "tBodyAcc-mean()-Z",
                "tBodyAcc-std()-X",
                "tBodyAcc-std()-Y",
                "tBodyAcc-std()-Z",
                "tGravityAcc-mean()-X",
                "tGravityAcc-mean()-Y",
                "tGravityAcc-mean()-Z",
                "tGravityAcc-std()-X",
                "tGravityAcc-std()-Y",
                "tGravityAcc-std()-Z",
                "tBodyAccJerk-mean()-X",
                "tBodyAccJerk-mean()-Y",
                "tBodyAccJerk-mean()-Z",
                "tBodyAccJerk-std()-X",
                "tBodyAccJerk-std()-Y",
                "tBodyAccJerk-std()-Z",
                "tBodyGyro-mean()-X",
                "tBodyGyro-mean()-Y",
                "tBodyGyro-mean()-Z",
                "tBodyGyro-std()-X",
                "tBodyGyro-std()-Y",
                "tBodyGyro-std()-Z",
                "tBodyGyroJerk-mean()-X",
                "tBodyGyroJerk-mean()-Y",
                "tBodyGyroJerk-mean()-Z",
                "tBodyGyroJerk-std()-X",
                "tBodyGyroJerk-std()-Y",
                "tBodyGyroJerk-std()-Z",
                "tBodyAccMag-mean()",
                "tBodyAccMag-std()",
                "tGravityAccMag-mean()",
                "tGravityAccMag-std()",
                "tBodyAccJerkMag-mean()",
                "tBodyAccJerkMag-std()",
                "tBodyGyroMag-mean()",
                "tBodyGyroMag-std()",
                "tBodyGyroJerkMag-mean()",
                "tBodyGyroJerkMag-std()",
                "fBodyAcc-mean()-X",
                "fBodyAcc-mean()-Y",
                "fBodyAcc-mean()-Z",
                "fBodyAcc-std()-X",
                "fBodyAcc-std()-Y",
                "fBodyAcc-std()-Z",
                "fBodyAcc-meanFreq()-X",
                "fBodyAcc-meanFreq()-Y",
                "fBodyAcc-meanFreq()-Z",
                "fBodyAccJerk-mean()-X",
                "fBodyAccJerk-mean()-Y",
                "fBodyAccJerk-mean()-Z",
                "fBodyAccJerk-std()-X",
                "fBodyAccJerk-std()-Y",
                "fBodyAccJerk-std()-Z",
                "fBodyAccJerk-meanFreq()-X",
                "fBodyAccJerk-meanFreq()-Y",
                "fBodyAccJerk-meanFreq()-Z",
                "fBodyGyro-mean()-X",
                "fBodyGyro-mean()-Y",
                "fBodyGyro-mean()-Z",
                "fBodyGyro-std()-X",
                "fBodyGyro-std()-Y",
                "fBodyGyro-std()-Z",
                "fBodyGyro-meanFreq()-X",
                "fBodyGyro-meanFreq()-Y",
                "fBodyGyro-meanFreq()-Z",
                "fBodyAccMag-mean()",
                "fBodyAccMag-std()",
                "fBodyBodyAccJerkMag-mean()",
                "fBodyBodyAccJerkMag-std()",
                "fBodyBodyGyroMag-mean()",
                "fBodyBodyGyroMag-std()",
                "fBodyBodyGyroJerkMag-mean()",
                "fBodyBodyGyroJerkMag-std()",
                "fBodyBodyGyroJerkMag-meanFreq()",
                "angle(tBodyAccJerkMean),gravityMean)",
                "angle(tBodyGyroMean,gravityMean)",
                "angle(tBodyGyroJerkMean,gravityMean)",
                "angle(X,gravityMean)",
                "angle(Y,gravityMean)",
                "angle(Z,gravityMean)")

#subset the dataset so that only contains these columns
mean_sd_data<-data[c("subject","activity_labels",mean_sd_cols)]

#use the data.table package for manipulating the dataset
library(data.table)
mean_sd_data<-data.table(mean_sd_data)
mean_data<-mean_sd_data[,lapply(.SD, mean),by=list(subject,activity_labels)]
mean_data<-mean_data[order(activity_labels,subject)]

#write the summary dataset as text file
setwd("../")
write.table(mean_data,"tidy_data_mean.txt", row.names = FALSE)
