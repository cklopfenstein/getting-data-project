##CodeBook.md

Data Dictionary for UCI-HAR-tidy-data.txt file 
(tidy data from UCI Human Activity Recognition Using Smartphones dataset).

This dataset summarizes the raw data from the UCI study. The raw data contains time series sequences of measurements of acceleration and angular velocity (in 3 dimensions) from individual subjects engaged in various activities. The mean value and standard deviation for each sequence of measured values (over some time window) are also included. Corresponding frequency domain values (obtained by Fourier transform) are also included.

A more detailed description of the raw data can be found [here](https://github.com/cklopfenstein/getting-data-project/blob/master/UCIdocs/README.txt) (README.txt in the UCIdocs subdirectory of this repository).


This dataset contains the average values of the means and standard deviations of each observed variable, for each unique combination of subject and activity.

Variable names prefixed with *t* refer to the time series measurements, while names prefixed with *f* refer to the frequency domain values.

Units: all features are normalized, and bounded within [-1, 1].

####List of variable names

1. subjectID
1. activity
1. tBodyAccMeanX
1. tBodyAccMeanY
1. tBodyAccMeanZ
1. tBodyAccStdX
1. tBodyAccStdY
1. tBodyAccStdZ
1. tGravityAccMeanX
1. tGravityAccMeanY
1. tGravityAccMeanZ
1. tGravityAccStdX
1. tGravityAccStdY
1. tGravityAccStdZ
1. tBodyAccJerkMeanX
1. tBodyAccJerkMeanY
1. tBodyAccJerkMeanZ
1. tBodyAccJerkStdX
1. tBodyAccJerkStdY
1. tBodyAccJerkStdZ
1. tBodyGyroMeanX
1. tBodyGyroMeanY
1. tBodyGyroMeanZ
1. tBodyGyroStdX
1. tBodyGyroStdY
1. tBodyGyroStdZ
1. tBodyGyroJerkMeanX
1. tBodyGyroJerkMeanY
1. tBodyGyroJerkMeanZ
1. tBodyGyroJerkStdX
1. tBodyGyroJerkStdY
1. tBodyGyroJerkStdZ
1. tBodyAccMagMean
1. tBodyAccMagStd
1. tGravityAccMagMean
1. tGravityAccMagStd
1. tBodyAccJerkMagMean
1. tBodyAccJerkMagStd
1. tBodyGyroMagMean
1. tBodyGyroMagStd
1. tBodyGyroJerkMagMean
1. tBodyGyroJerkMagStd
1. fBodyAccMeanX
1. fBodyAccMeanY
1. fBodyAccMeanZ
1. fBodyAccStdX
1. fBodyAccStdY
1. fBodyAccStdZ
1. fBodyAccJerkMeanX
1. fBodyAccJerkMeanY
1. fBodyAccJerkMeanZ
1. fBodyAccJerkStdX
1. fBodyAccJerkStdY
1. fBodyAccJerkStdZ
1. fBodyGyroMeanX
1. fBodyGyroMeanY
1. fBodyGyroMeanZ
1. fBodyGyroStdX
1. fBodyGyroStdY
1. fBodyGyroStdZ
1. fBodyAccMagMean
1. fBodyAccMagStd
1. fBodyAccJerkMagMean
1. fBodyAccJerkMagStd
1. fBodyGyroMagMean
1. fBodyGyroMagStd
1. fBodyGyroJerkMagMean
1. fBodyGyroJerkMagStd