# Code Book

## Dataset  

**tidyData** dataset was generated using x_train, y_train, x_test, y_test, subject_train and subject_test data from the downloaded files. Features and activity names were applied to the tidyData dataset from features.txt and activity_labels.txt file.

tidyData dataset contains the relevant averages and file tidyData.txt has been generated from this dataset. Following table describes the structure of tidyData dataset and the variable description.

## Dataset Structure and variable description 

|	Variable Name	|	Variable Description	|
|	----------------	|	:----------------------------	|
|	subject	|	ID of the Subject. Range for subject is 1 to 30.	|
|	activityId	|	ID of the Activity. Range of ActivityID is 1 to 6.	|
|	activityName	|	Name of Activity. Values are WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING	|
|	tBodyAcc-mean()-X	|	Feature - Time Domain: Body Acceleration signal - X Axis - Mean	|
|	tBodyAcc-mean()-Y	|	Feature - Time Domain: Body Acceleration signal - Y Axis - Mean	|
|	tBodyAcc-mean()-Z	|	Feature - Time Domain: Body Acceleration signal - Z Axis - Mean	|
|	tBodyAcc-std()-X	|	Feature - Time Domain: Body Acceleration signal - X Axis - Standard Deviation	|
|	tBodyAcc-std()-Y	|	Feature - Time Domain: Body Acceleration signal - Y Axis - Standard Deviation	|
|	tBodyAcc-std()-Z	|	Feature - Time Domain: Body Acceleration signal - Z Axis - Standard Deviation	|
|	tGravityAcc-mean()-X	|	Feature - Time Domain: Gravity Acceleration signal - X Axis - Mean	|
|	tGravityAcc-mean()-Y	|	Feature - Time Domain: Gravity Acceleration signal - Y Axis - Mean	|
|	tGravityAcc-mean()-Z	|	Feature - Time Domain: Gravity Acceleration signal - Z Axis - Mean	|
|	tGravityAcc-std()-X	|	Feature - Time Domain: Gravity Acceleration signal - X Axis - Standard Deviation	|
|	tGravityAcc-std()-Y	|	Feature - Time Domain: Gravity Acceleration signal - Y Axis - Standard Deviation	|
|	tGravityAcc-std()-Z	|	Feature - Time Domain: Gravity Acceleration signal - Z Axis - Standard Deviation	|
|	tBodyAccJerk-mean()-X	|	Feature - Time Domain: Body Jerk Signal - X Axis - Mean	|
|	tBodyAccJerk-mean()-Y	|	Feature - Time Domain: Body Jerk Signal - Y Axis - Mean	|
|	tBodyAccJerk-mean()-Z	|	Feature - Time Domain: Body Jerk Signal - Z Axis - Mean	|
|	tBodyAccJerk-std()-X	|	Feature - Time Domain: Body Jerk Signal - X Axis - Standard Deviation	|
|	tBodyAccJerk-std()-Y	|	Feature - Time Domain: Body Jerk Signal - Y Axis - Standard Deviation	|
|	tBodyAccJerk-std()-Z	|	Feature - Time Domain: Body Jerk Signal - Z Axis - Standard Deviation	|
|	tBodyGyro-mean()-X	|	Feature - Time Domain: Body Gyroscope Signal - X Axis - Mean	|
|	tBodyGyro-mean()-Y	|	Feature - Time Domain: Body Gyroscope Signal - Y Axis - Mean	|
|	tBodyGyro-mean()-Z	|	Feature - Time Domain: Body Gyroscope Signal - Z Axis - Mean	|
|	tBodyGyro-std()-X	|	Feature - Time Domain: Body Gyroscope Signal - X Axis - Standard Deviation	|
|	tBodyGyro-std()-Y	|	Feature - Time Domain: Body Gyroscope Signal - Y Axis - Standard Deviation	|
|	tBodyGyro-std()-Z	|	Feature - Time Domain: Body Gyroscope Signal - Z Axis - Standard Deviation	|
|	tBodyGyroJerk-mean()-X	|	Feature - Time Domain: Body Gyroscope Jerk Signal - X Axis - Mean	|
|	tBodyGyroJerk-mean()-Y	|	Feature - Time Domain: Body Gyroscope Jerk Signal - Y Axis - Mean	|
|	tBodyGyroJerk-mean()-Z	|	Feature - Time Domain: Body Gyroscope Jerk Signal - Z Axis - Mean	|
|	tBodyGyroJerk-std()-X	|	Feature - Time Domain: Body Gyroscope Jerk Signal - X Axis - Standard Deviation	|
|	tBodyGyroJerk-std()-Y	|	Feature - Time Domain: Body Gyroscope Jerk Signal - Y Axis - Standard Deviation	|
|	tBodyGyroJerk-std()-Z	|	Feature - Time Domain: Body Gyroscope Jerk Signal - Z Axis - Standard Deviation	|
|	tBodyAccMag-mean()	|	Feature - Time Domain: Body Accelerometer Magnitude - Mean	|
|	tBodyAccMag-std()	|	Feature - Time Domain: Body Accelerometer Magnitude - Standard Deviation	|
|	tGravityAccMag-mean()	|	Feature - Time Domain: Gravity Accelerometer Magnitude - Mean	|
|	tGravityAccMag-std()	|	Feature - Time Domain: Gravity Accelerometer Magnitude - Standard Deviation	|
|	tBodyAccJerkMag-mean()	|	Feature - Time Domain: Body Accelerometer Jerk Signal Magnitude - Mean	|
|	tBodyAccJerkMag-std()	|	Feature - Time Domain: Body Accelerometer Jerk Signal Magnitude - Standard Deviation	|
|	tBodyGyroMag-mean()	|	Feature - Time Domain: Body Gyroscope Signal Magnitude - Mean	|
|	tBodyGyroMag-std()	|	Feature - Time Domain: Body Gyroscope Signal Magnitude - Standard Deviation	|
|	tBodyGyroJerkMag-mean()	|	Feature - Time Domain: Body Gyroscope Jerk Signal Magnitude - Mean	|
|	tBodyGyroJerkMag-std()	|	Feature - Time Domain: Body Gyroscope Jerk Signal Magnitude - Standard Deviation	|
|	fBodyAcc-mean()-X	|	Feature - Frequency Domain: Body Acceleration signal - X Axis - Mean	|
|	fBodyAcc-mean()-Y	|	Feature - Frequency Domain: Body Acceleration signal - Y Axis - Mean	|
|	fBodyAcc-mean()-Z	|	Feature - Frequency Domain: Body Acceleration signal - Z Axis - Mean	|
|	fBodyAcc-std()-X	|	Feature - Frequency Domain: Body Acceleration signal - X Axis - Standard Deviation	|
|	fBodyAcc-std()-Y	|	Feature - Frequency Domain: Body Acceleration signal - Y Axis - Standard Deviation	|
|	fBodyAcc-std()-Z	|	Feature - Frequency Domain: Body Acceleration signal - Z Axis - Standard Deviation	|
|	fBodyAccJerk-mean()-X	|	Feature - Frequency Domain: Body Jerk Signal - X Axis - Mean	|
|	fBodyAccJerk-mean()-Y	|	Feature - Frequency Domain: Body Jerk Signal - Y Axis - Mean	|
|	fBodyAccJerk-mean()-Z	|	Feature - Frequency Domain: Body Jerk Signal - Z Axis - Mean	|
|	fBodyAccJerk-std()-X	|	Feature - Frequency Domain: Body Jerk Signal - X Axis - Standard Deviation	|
|	fBodyAccJerk-std()-Y	|	Feature - Frequency Domain: Body Jerk Signal - Y Axis - Standard Deviation	|
|	fBodyAccJerk-std()-Z	|	Feature - Frequency Domain: Body Jerk Signal - Z Axis - Standard Deviation	|
|	fBodyGyro-mean()-X	|	Feature - Frequency Domain: Body Gyroscope Signal - X Axis - Mean	|
|	fBodyGyro-mean()-Y	|	Feature - Frequency Domain: Body Gyroscope Signal - Y Axis - Mean	|
|	fBodyGyro-mean()-Z	|	Feature - Frequency Domain: Body Gyroscope Signal - Z Axis - Mean	|
|	fBodyGyro-std()-X	|	Feature - Frequency Domain: Body Gyroscope Signal - X Axis - Standard Deviation	|
|	fBodyGyro-std()-Y	|	Feature - Frequency Domain: Body Gyroscope Signal - Y Axis - Standard Deviation	|
|	fBodyGyro-std()-Z	|	Feature - Frequency Domain: Body Gyroscope Signal - Z Axis - Standard Deviation	|
|	fBodyAccMag-mean()	|	Feature - Frequency Domain: Body Accelerometer Magnitude - Mean	|
|	fBodyAccMag-std()	|	Feature - Frequency Domain: Body Accelerometer Magnitude - Standard Deviation	|
|	fBodyBodyAccJerkMag-mean()	|	Feature - Frequency Domain: Body Accelerometer Jerk Signal Magnitude - Mean	|
|	fBodyBodyAccJerkMag-std()	|	Feature - Frequency Domain: Body Accelerometer Jerk Signal Magnitude - Standard Deviation	|
|	fBodyBodyGyroMag-mean()	|	Feature - Frequency Domain: Body Gyroscope Signal Magnitude - Mean	|
|	fBodyBodyGyroMag-std()	|	Feature - Frequency Domain: Body Gyroscope Signal Magnitude - Standard Deviation	|
|	fBodyBodyGyroJerkMag-mean()	|	Feature - Frequency Domain: Body Gyroscope Jerk Signal Magnitude - Mean	|
|	fBodyBodyGyroJerkMag-std()	|	Feature - Frequency Domain: Body Gyroscope Jerk Signal Magnitude - Standard Deviation	|


