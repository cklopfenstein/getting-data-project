# run_analysis.R
# Process raw data from UCI HAR into tidy dataset
setwd("~/Devel/R/DataScience/GettingData/Project/GettingDataProject")  # need to change this eventually
# read the input files
X_test <- read.csv("../UCI HAR Dataset/test/X_test.txt", sep = " ")
y_test <- read.csv("../UCI HAR Dataset/test/y_test.txt", sep = " ")
subject_test <- read.csv("../UCI HAR Dataset/test/subject_test.txt", sep = " ")
X_train <- read.csv("../UCI HAR Dataset/train/X_train.txt", sep = " ")
y_train <- read.csv("../UCI HAR Dataset/train/y_train.txt", sep = " ")
subject_train <- read.csv("../UCI HAR Dataset/train/subject_train.txt", sep = " ")

# write.table("UCI-HAR-tidy-data.txt", row.name=FALSE)