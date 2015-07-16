#CodeBook#


##Data Description##


The data for this project comes from the UCI Machine Learning Repository and is available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). It is the result of an experiment carried out on 30 volunteers. 

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Data Transformations##

The R script (run_analysis.R) performs the following transformations to the raw data:

1. Extracts data from the training and test folders and merges them into one dataset. 
2. Subsets the dataset such that only the measurements on the mean and standard deviation are kept for each measurement. 
3. Adds the descriptive name of each activity for each measurement.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Variable Descriptions##

- 'activity_desc' -- Activity label
- 'tBodyAcc-mean()-X' -- Mean of time domain signal of body linear accelration
- 'tBodyAcc-mean()-Y' -- Mean of time domain signal of body linear accelration
- 'tBodyAcc-mean()-Z' -- Mean of time domain signal of body linear accelration
- 'tBodyAcc-std()-X' -- Standard Deviation of time domain signal of body linear accelration
- 'tBodyAcc-std()-Y' -- Standard Deviation of time domain signal of body linear accelration
- 'tBodyAcc-std()-Z' -- Standard Deviation of time domain signal of body linear accelration
- 'tGravityAcc-mean()-X' -- Mean of time domain signal of gravity accelration
- 'tGravityAcc-mean()-Y' -- Mean of time domain signal of gravity accelration
- 'tGravityAcc-mean()-Z' -- Mean of time domain signal of gravity accelration
- 'tGravityAcc-std()-X' -- Standard Deviation of time domain signal of gravity accelration
- 'tGravityAcc-std()-Y' -- Standard Deviation of time domain signal of gravity accelration
- 'tGravityAcc-std()-Z' -- Standard Deviation of time domain signal of gravity accelration
- 'tBodyAccJerk-mean()-X' -- Mean of time domain signal of jerk signal
- 'tBodyAccJerk-mean()-Y' -- Mean of time domain signal of jerk signal
- 'tBodyAccJerk-mean()-Z' -- Mean of time domain signal of jerk signal
- 'tBodyAccJerk-std()-X' -- Standard Deviation of time domain signal of jerk signal
- 'tBodyAccJerk-std()-Y' -- Standard Deviation of time domain signal of jerk signal
- 'tBodyAccJerk-std()-Z' -- Standard Deviation of time domain signal of jerk signal
- 'tBodyGyro-mean()-X' -- Mean of time domain signal of jerk signal
- 'tBodyGyro-mean()-Y' -- Mean of time domain signal of gyroscope measure
- 'tBodyGyro-mean()-Z' -- Mean of time domain signal of gyroscope measure
- 'tBodyGyro-std()-X' -- Standard Deviation of time domain signal of gyroscope measure
- 'tBodyGyro-std()-Y' -- Standard Deviation of time domain signal of gyroscope measure
- 'tBodyGyro-std()-Z' -- Standard Deviation of time domain signal of gyroscope measure
- 'tBodyGyroJerk-mean()-X' -- Mean of time domain signal of gyroscope jerk measure
- 'tBodyGyroJerk-mean()-Y' -- Mean of time domain signal of gyroscope jerk measure
- 'tBodyGyroJerk-mean()-Z' -- Mean of time domain signal of gyroscope jerk measure
- 'tBodyGyroJerk-std()-X' -- Standard Deviation of time domain signal of gyroscope jerk measure
- 'tBodyGyroJerk-std()-Y' -- Standard Deviation of time domain signal of gyroscope jerk measure
- 'tBodyGyroJerk-std()-Z' -- Standard Deviation of time domain signal of gyroscope jerk measure
- 'tBodyAccMag-mean()' -- Mean of time domain signal of acceleration magnitude
- 'tBodyAccMag-std()' -- Standard Deviation of time domain signal of acceleration magnitude
- 'tGravityAccMag-mean()' -- Mean of time domain signal of acceleration magnitude
- 'tGravityAccMag-std()' -- Standard Deviation of time domain signal of acceleration magnitude
- 'tBodyAccJerkMag-mean()' -- Mean of time domain signal of jerk magnitude
- 'tBodyAccJerkMag-std()' -- Standard Deviation of time domain signal of jerk magnitude
- 'tBodyGyroMag-mean()' -- Mean of time domain signal of gyroscope magnitude
- 'tBodyGyroMag-std()' -- Standard Deviation of time domain signal of gyroscope magnitude
- 'tBodyGyroJerkMag-mean()' -- Mean of time domain signal of gyroscope magnitude
- 'tBodyGyroJerkMag-std()' -- Standard Deviation of time domain signal of gyroscope magnitude
- 'fBodyAcc-mean()-X' -- Mean of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-mean()-Y' -- Mean of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-mean()-Z' -- Mean of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-std()-X' -- Standard Deviation of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-std()-Y' -- Standard Deviation of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-std()-Z' -- Standard Deviation of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-meanFreq()-X' -- Mean of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-meanFreq()-Y' -- Mean of Fast Fourier Transform of body linear acceleration
- 'fBodyAcc-meanFreq()-Z' -- Mean of Fast Fourier Transform of body linear acceleration
- 'fBodyAccJerk-mean()-X' -- Mean of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-mean()-Y' -- Mean of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-mean()-Z' -- Mean of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-std()-X' -- Standard Deviation of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-std()-Y' -- Standard Deviation of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-std()-Z' -- Standard Deviation of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-meanFreq()-X' -- Mean of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-meanFreq()-Y' -- Mean of Fast Fourier Transform of jerk magnitude
- 'fBodyAccJerk-meanFreq()-Z' -- Mean of Fast Fourier Transform of jerk magnitude
- 'fBodyGyro-mean()-X' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-mean()-Y' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-mean()-Z' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-std()-X' -- Standard Deviation of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-std()-Y' -- Standard Deviation of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-std()-Z' -- Standard Deviation of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-meanFreq()-X' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-meanFreq()-Y' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyGyro-meanFreq()-Z' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyAccMag-mean()' -- Mean of Fast Fourier Transform of acceleration magnitude
- 'fBodyAccMag-std()' -- Standard Deviation of Fast Fourier Transform of acceleration magnitude
- 'fBodyBodyAccJerkMag-mean()' -- Mean of Fast Fourier Transform of acceleration magnitude
- 'fBodyBodyAccJerkMag-std()' -- Standard Deviation of Fast Fourier Transform of acceleration magnitude
- 'fBodyBodyGyroMag-mean()' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyBodyGyroMag-std()' -- Standard Deviation of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyBodyGyroJerkMag-mean()' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyBodyGyroJerkMag-std()' -- Standard Deviation of Fast Fourier Transform of gyroscopic magnitude
- 'fBodyBodyGyroJerkMag-meanFreq()' -- Mean of Fast Fourier Transform of gyroscopic magnitude
- 'angle(tBodyAccJerkMean),gravityMean)' -- Mean of angle of signal in signal window sample
- 'angle(tBodyGyroMean,gravityMean)' -- Mean of angle of signal in signal window sample
- 'angle(tBodyGyroJerkMean,gravityMean)' -- Mean of angle of signal in signal window sample
- 'angle(X,gravityMean)' -- Mean of angle of signal in signal window sample
- 'angle(Y,gravityMean)' -- Mean of angle of signal in signal window sample
- 'angle(Z,gravityMean)' -- Mean of angle of signal in signal window sample
