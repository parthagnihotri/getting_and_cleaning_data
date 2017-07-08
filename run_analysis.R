########################################################################################
#
# Getting and Cleaning Data Course Project - run_analysis.R script performs following 
# steps.
#
# 1. Merges the training and the test sets for Subject, Activity and Features to create 
#    one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#    measurement. 
# 3. Uses descriptive activity names to name the activities in the data set using the 
#    activity names labels.
# 4. Sets appropriate labels for the data set with descriptive variable names using 
#    features labels. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
# 6. Creates text file for the data set created in step 5.
#
########################################################################################


library(data.table)
library(dplyr)

# run_analysis.R expects the Samsung data is in R working directory.  
# filePath stores the directory path.
filePath <- file.path(getwd(),"UCI HAR Dataset")

# Read subject training dataset
dataSubjectTrain <- data.table(fread(file.path(filePath,"train","subject_train.txt")))
# Read subject esting dataset
dataSubjectTest <- data.table(fread(file.path(filePath,"test","subject_test.txt")))

# Read Y training dataset
dataActivityTrain <- data.table(fread(file.path(filePath,"train","Y_train.txt")))
# Read Y testing dataset
dataActivityTest <- data.table(fread(file.path(filePath,"test","Y_test.txt")))

# Read X training dataset
dataFeatureTrain <- data.table(fread(file.path(filePath,"train","X_train.txt")))
# Read X testing dataset
dataFeatureTest <- data.table(fread(file.path(filePath,"test","X_test.txt")))

# Merge Subject training and testing dataset
dataSubject <- rbind(dataSubTrain,dataSubTest)
# Merge Y training and testing dataset
dataActivity <- rbind(dataActivityTrain,dataActivityTest)
# Merget X training and testing dataset
dataFeature <- rbind(dataFeatureTrain,dataFeatureTest)

# Read features label file
featureNames <- data.table(fread(file.path(filePath,"features.txt")))
# Read activity lable file
activityNames <- data.table(fread(file.path(filePath,"activity_labels.txt")))

# Set column names in Subject data table
setnames(dataSubject, "V1", "subject")

# Set column names in Activity data table
setnames(dataActivity, "V1", "activityId")

# Set column names in feature label data table
setnames(featureNames,names(featureNames),c("featureId","featureName"))

# Set column names in Activity lable data table
setnames(activityNames,names(activityNames),c("activityId","activityName"))

# Set column names in features data table using features names data table
setnames(dataFeature,names(dataFeature),featureNames$featureName)

# Merge Subject, Activity and Feature datasets
mergedData <- cbind(dataSubject,dataActivity, dataFeature)
# Set key value to subject and activityId
setkey(mergedData,subject,activityId)

# Select feature names which has mean or std strins in name.
# Only select feature names selected in the merged data table.
featureNames <- featureNames[like(featureName,"mean\\(") | like(featureName,"std\\(")]
mergedData <- mergedData[,c(key(mergedData),featureNames$featureName),with=FALSE]
mergedData <- merge(mergedData, activityNames, by="activityId", all.x=TRUE)
setkey(mergedData,subject,activityId,activityName)

# Create tidy data set with the average of each variable for each activity and each subject
tidyData <- mergedData %>% group_by(subject,activityId,activityName) %>% summarize_all(mean)

# Create text file for the tidy dataset
write.table(tidyData, './tidyData.txt',row.names=FALSE,sep='\t');






