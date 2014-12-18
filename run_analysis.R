# run_analysis.R
# Process raw data from UCI HAR into tidy dataset
setwd("~/Devel/R/DataScience/GettingData/Project/GettingDataProject")  # need to change this eventually
# read input files, using data.table package
#library(data.table)
#X_test <- fread("../UCI HAR Dataset/test/X_test.txt", nrows=4311)
#y_test <- fread("../UCI HAR Dataset/test/y_test.txt")
#subject_test <- fread("../UCI HAR Dataset/test/subject_test.txt")
#X_train <- fread("../UCI HAR Dataset/train/X_train.txt")
#y_train <- fread("../UCI HAR Dataset/train/y_train.txt")
#subject_train <- fread("../UCI HAR Dataset/train/subject_train.txt")
#
# had problems with above - buffer overflow reading X_test.txt,
# so try using read.csv to create data frames
#
# read the input files
X_test_df <- read.csv("../UCI HAR Dataset/test/X_test.txt", sep = " ")
y_test_df <- read.csv("../UCI HAR Dataset/test/y_test.txt", sep = " ")
subject_test_df <- read.csv("../UCI HAR Dataset/test/subject_test.txt", sep = " ")
X_train_df <- read.csv("../UCI HAR Dataset/train/X_train.txt", sep = " ")
y_train_df <- read.csv("../UCI HAR Dataset/train/y_train.txt", sep = " ")
subject_train_df <- read.csv("../UCI HAR Dataset/train/subject_train.txt", sep = " ")
#
# now convert data frames to data tables (and delete original data frame obects)
#
X_test <- data.table(X_test_df)
rm(X_test_df)
y_test <- data.table(y_test_df)
rm(y_test_df)
subject_test <- data.table(subject_test_df)
rm(subject_test_df)
X_train <- data.table(X_train_df)
rm(X_train_df)
y_train <- data.table(y_train_df)
rm(y_train_df)
subject_train <- data.table(subject_train_df)
rm(subject_train_df)
# example from forums
# Test<-read.table("../UCI HAR Dataset/test/X_test.txt",header = FALSE,sep ="")
#
# write.table("UCI-HAR-tidy-data.txt", row.name=FALSE)