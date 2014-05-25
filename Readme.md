# Getting and Cleaning Data - Course Project

The objective is to create a clean and tidy dataset of the [Human Activity Recognition Using Smartphones Data Set] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) from the UCI Machine Learning Repository.

## Steps:
1. Download the dataset from [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Unzip and store folder UCI HAR Dataset in a folder on your local drive, eg \Users\xyz\Documents\proj\
3. Place the file run_analysis.R in the same path.
4. In Rstudio set working directory as the folder which contains the R file and the dataset.
5. Source the R file to obtain two text files as output.
6. Generated file clean_data.txt contains the mean and standard deviation observations from train and test data. The data is documented against subject id and activity.
7. Generated file tidy_data.txt contains the average of each variable for each activity and each subject. 

## Assumptions:
1. All columns representing means contain ...mean() in them.
2. All columns representing standard deviations contain ...std() in them.


