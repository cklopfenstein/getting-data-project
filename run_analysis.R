# run_analysis.R
# Process raw data from UCI HAR into tidy dataset
#
# for local use
#setwd("~/Devel/R/DataScience/GettingData/Project/GettingDataProject")
#
# read input files, using data.table package
library(data.table)
library(dplyr)
X_test <- read.table("X_test.txt", header = FALSE, sep ="")
y_test <- read.table("y_test.txt", header = FALSE, sep ="")
subject_test <- read.table("subject_test.txt", header = FALSE, sep ="")
X_train <- read.table("X_train.txt", header = FALSE, sep ="")
y_train <- read.table("y_train.txt", header = FALSE, sep ="")
subject_train <- read.table("subject_train.txt", header = FALSE, sep ="")
#
# merge test and training sets
X_all <- rbind(X_test, X_train)
rm(X_test)
rm(X_train)
#
y_all <- rbind(y_test, y_train)
rm(y_test)
rm(y_train)
#
subject_all <- rbind(subject_test, subject_train)
rm(subject_test)
rm(subject_train)
# rename columns of X_all with meaningful names
features <- read.table("features.txt", header = FALSE, sep ="")
feature_names <- make.names(features[,2])
colnames(X_all) <- feature_names
# read the activity labels into a vector/factor
labels <- read.table("activity_labels.txt", header = FALSE, sep ="")
# convert list of activity numbers to labels
labels_all <- inner_join(labels, y_all)
# add subject IDs and activity labels to the table of measurements
X_all <- cbind(labels_all[2], X_all)
X_all <- cbind(subject_all, X_all)
colnames(X_all)[1] <- "subjectID"
colnames(X_all)[2] <- "activity"
# select the columns we want: means (not meanFreq) and standard deviations,
# plus the subject ID and activity label
X_all <- X_all[,grepl("((mean|std)\\.|subjectID|activity)", colnames(X_all))]
# tidy up variable/column names
colnames(X_all) <- gsub("fBodyBody", "fBody", colnames(X_all))
colnames(X_all) <- gsub(".mean...", "Mean", colnames(X_all))
colnames(X_all) <- gsub(".std...", "Std", colnames(X_all))
colnames(X_all) <- gsub(".mean..", "Mean", colnames(X_all))
colnames(X_all) <- gsub(".std..", "Std", colnames(X_all))
# group measurement data by subject ID and activity
X_all <- group_by(X_all, subjectID, activity)
# find mean values for all columns, grouped by subject and activity
# note that each subject appears, but not all activities for each subject
means <- X_all %>% summarise_each(funs(mean))
# write out the resulting table
write.table(means, file = "UCI-HAR-tidy-data.txt", row.names = FALSE)