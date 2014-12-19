# run_analysis.R
# Process raw data from UCI HAR into tidy dataset
setwd("~/Devel/R/DataScience/GettingData/Project/GettingDataProject")  # need to change this eventually
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
# rename columns of X_all with meaningful names
features <- read.table("features.txt", header = FALSE, sep ="")
feature_names <- make.names(features[,2])
colnames(X_all) <- feature_names
#
y_all <- rbind(y_test, y_train)
rm(y_test)
rm(y_train)
subject_all <- rbind(subject_test, subject_train)
rm(subject_test)
rm(subject_train)
#
labels <- read.table("activity_labels.txt", header = FALSE, sep ="")
# something like this
#test_labels <- left_join(labels, y_test)
#train_labels <- left_join(labels, y_train)
labels_all <- left_join(labels, y_all)
# and something like this
X_all <- cbind(labels_all[2], X_all)
X_all <- cbind(subject_all, X_all)
colnames(X_all)[1] <- "subjectID"
colnames(X_all)[2] <- "activity"
# select the columns we want
# write.table("UCI-HAR-tidy-data.txt", row.name=FALSE)