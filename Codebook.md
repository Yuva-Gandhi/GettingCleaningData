## Data:

[Data description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Data Transformation:

Following data transformations are carried out by the run_analysis.R script.

1. Read the X_train.txt and X_test.txt and merge to create a data frame.
2. Associate additional columns to represent activity IDs and subject IDs read from y_<train/test>.txt and subject_<train/test>.txt files respectively.
3. Assign column names reading from features.txt.
4. Take a subset of the columns representing only the mean and standard deviation values.
5. Associate descriptive activity names as specified in activity_labels.txt in the activity column.
8. Rename column names as per tidy data standards.
7. Melt the dataset by specifying activity ID and subject ID as the ID variables.
8. Re cast the melted dataset with activity name and subject id as the IDs and mean as the aggregator function.
9. Save the result in text file.

## Variable Descriptions

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are of which the following were extracted:

-mean(): Mean value

-std(): Standard deviation

## Data Columns

| id | varname                      |
|----|------------------------------|
| 1  | subject                      |
| 2  | activity                     |
| 3  | tbodyaccmeanx                |
| 4  | tbodyaccmeany                |
| 5  | tbodyaccmeanz                |
| 6  | tbodyaccstdx                 |
| 7  | tbodyaccstdy                 |
| 8  | tbodyaccstdz                 |
| 9  | tgravityaccmeanx             |
| 10 | tgravityaccmeany             |
| 11 | tgravityaccmeanz             |
| 12 | tgravityaccstdx              |
| 13 | tgravityaccstdy              |
| 14 | tgravityaccstdz              |
| 15 | tbodyaccjerkmeanx            |
| 16 | tbodyaccjerkmeany            |
| 17 | tbodyaccjerkmeanz            |
| 18 | tbodyaccjerkstdx             |
| 19 | tbodyaccjerkstdy             |
| 20 | tbodyaccjerkstdz             |
| 21 | tbodygyromeanx               |
| 22 | tbodygyromeany               |
| 23 | tbodygyromeanz               |
| 24 | tbodygyrostdx                |
| 25 | tbodygyrostdy                |
| 26 | tbodygyrostdz                |
| 27 | tbodygyrojerkmeanx           |
| 28 | tbodygyrojerkmeany           |
| 29 | tbodygyrojerkmeanz           |
| 30 | tbodygyrojerkstdx            |
| 31 | tbodygyrojerkstdy            |
| 32 | tbodygyrojerkstdz            |
| 33 | tbodyaccmagmean              |
| 34 | tbodyaccmagstd               |
| 35 | tgravityaccmagmean           |
| 36 | tgravityaccmagstd            |
| 37 | tbodyaccjerkmagmean          |
| 38 | tbodyaccjerkmagstd           |
| 39 | tbodygyromagmean             |
| 40 | tbodygyromagstd              |
| 41 | tbodygyrojerkmagmean         |
| 42 | tbodygyrojerkmagstd          |
| 43 | fbodyaccmeanx                |
| 44 | fbodyaccmeany                |
| 45 | fbodyaccmeanz                |
| 46 | fbodyaccstdx                 |
| 47 | fbodyaccstdy                 |
| 48 | fbodyaccstdz                 |
| 49 | fbodyaccmeanfreqx            |
| 50 | fbodyaccmeanfreqy            |
| 51 | fbodyaccmeanfreqz            |
| 52 | fbodyaccjerkmeanx            |
| 53 | fbodyaccjerkmeany            |
| 54 | fbodyaccjerkmeanz            |
| 55 | fbodyaccjerkstdx             |
| 56 | fbodyaccjerkstdy             |
| 57 | fbodyaccjerkstdz             |
| 58 | fbodyaccjerkmeanfreqx        |
| 59 | fbodyaccjerkmeanfreqy        |
| 60 | fbodyaccjerkmeanfreqz        |
| 61 | fbodygyromeanx               |
| 62 | fbodygyromeany               |
| 63 | fbodygyromeanz               |
| 64 | fbodygyrostdx                |
| 65 | fbodygyrostdy                |
| 66 | fbodygyrostdz                |
| 67 | fbodygyromeanfreqx           |
| 68 | fbodygyromeanfreqy           |
| 69 | fbodygyromeanfreqz           |
| 70 | fbodyaccmagmean              |
| 71 | fbodyaccmagstd               |
| 72 | fbodyaccmagmeanfreq          |
| 73 | fbodybodyaccjerkmagmean      |
| 74 | fbodybodyaccjerkmagstd       |
| 75 | fbodybodyaccjerkmagmeanfreq  |
| 76 | fbodybodygyromagmean         |
| 77 | fbodybodygyromagstd          |
| 78 | fbodybodygyromagmeanfreq     |
| 79 | fbodybodygyrojerkmagmean     |
| 80 | fbodybodygyrojerkmagstd      |
| 81 | fbodybodygyrojerkmagmeanfreq |