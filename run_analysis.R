# Getting and Cleaning Data - Course Project
# 1. Merges the training and the test sets to create one data set.

train <- read.table("UCI HAR Dataset/train/X_train.txt")
test <- read.table("UCI HAR Dataset/test/X_test.txt")
df<- rbind(train, test)

features <- read.table("UCI HAR Dataset/features.txt")
names(df) <- features[,2]

train <- read.table("UCI HAR Dataset/train/subject_train.txt")
test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(train, test)
names(subject) <- "subject"

train <- read.table("UCI HAR Dataset/train/y_train.txt")
test <- read.table("UCI HAR Dataset/test/y_test.txt")
activity <- rbind(train, test)
names(activity) <- "activity"

df <- cbind(subject,activity,df)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

req_col <- grep("mean|std", features[, 2])
df <- df[,c(1,2,(req_col +2))]

# 3. Uses descriptive activity names to name the activities in the data set

activity_label <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_label[, 2] = tolower(as.character(activity_label[, 2]))
activity_label[, 2] = gsub("_","",activity_label[, 2])
df[,2] = activity_label[df[,2], 2]
names(df[,2]) <- "activity"

# 4. Appropriately labels the data set with descriptive activity names.

names(df) <- tolower(names(df))
names(df) <- gsub("-", "", names(df))
names(df) <- gsub("\\(", "", names(df))
names(df) <- gsub("\\)", "", names(df))
write.table(df, "clean_data.txt")

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity 
# and each subject.
install.packages("reshape2")
library(reshape2)
df <- melt(df, id.vars = c("subject", "activity"))
df <- dcast(df, subject+activity ~ variable, fun.aggregate = mean, na.rm = TRUE)
write.table(df, "tidy_data.txt")