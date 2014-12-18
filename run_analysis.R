# run_analysis.R
# Process raw data from UCI HAR into tidy dataset
setwd("~/Devel/R/DataScience/GettingData/Project/GettingDataProject")  # need to change this eventually
# read input files, using data.table package
library(data.table)
X_test <- read.table("X_test.txt", header = FALSE, sep ="")
y_test <- read.table("y_test.txt", header = FALSE, sep ="")
subject_test <- read.table("subject_test.txt", header = FALSE, sep ="")
X_train <- read.table("X_train.txt", header = FALSE, sep ="")
y_train <- read.table("y_train.txt", header = FALSE, sep ="")
subject_train <- read.table("subject_train.txt", header = FALSE, sep ="")
#
# select the columns we want

# write.table("UCI-HAR-tidy-data.txt", row.name=FALSE)