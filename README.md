##README.md

getting-data-project repository  - an assignment for the Coursera "Getting and Cleaning Data" course.

###Contents

1. **run_analysis.R** - an R script to analyze Samsung data (Human Activity Recognition Using Smartphones). This script reads raw data files from the UCI HAR study and produces a tidy data text file called "UCI-HAR-tidy-data.txt".

    The steps in the analysis are:
    
      * Read the raw data files into data tables - X_test.txt, X_train.txt (test and training sets of the measurements), y_test.txt, y_train.txt (activity codes), subject_test.txt, subject_train.txt (subject IDs). Also read activity_label.txt, which gives the list of activity labels, and features.txt, which gives the variable names for the 561 variables in the raw data.
      * Merge the test and training sets (for X, y and subject) by appending rows.
      * Assign text labels for activities and column names, from activity_label.txt and features.txt.
      * Add subject IDs and activity labels to the table of measurements.
      * Select the columns for analysis: here we just want the means and standard deviations of the various measurements.
      * Group measurements by subject and activity.
      * Find the average value of each variable for each combination of subject and activity.
      * Write the resulting table to a text file.

2. **CodeBook.md** - a description of the variables in the tidy data produced by run_analysis.R.

3. **UCIdocs** - a folder containing documentation about the experiment and the raw data format, from the UCI Human Activity Recognition study.
