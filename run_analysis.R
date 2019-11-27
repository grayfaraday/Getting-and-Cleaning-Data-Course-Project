library(rlang)

filename <- "UCI_HAR_Dataset.zip"
  
  ## Download and unzip the dataset:
  if (!file.exists(filename)){
    fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, method="wget")
  }  
  if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}
  
# read and store data from text files

    features <- read.table("./UCI HAR Dataset/features.txt")

    #training data
    subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt") 
    y_train <- read.table("./UCI HAR Dataset/train/y_train.txt") # 'train/y_train.txt': Training labels.
    X_train <- read.table("./UCI HAR Dataset/train/X_train.txt") # 'train/X_train.txt': Training set.
    
    # test data
    subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    y_test <- read.table("./UCI HAR Dataset/test/y_test.txt") # 'test/y_test.txt': Test labels
    X_test <- read.table("./UCI HAR Dataset/test/X_test.txt") # 'test/X_test.txt': Test set.

# create a single df with the train data
train_df <- cbind(subject_train, y_train)
train_df <- cbind(train_df, X_train)

# create a single df with for test data
test_df <- cbind(subject_test, y_test)
test_df <- cbind(test_df, X_test)

# merge test_df and train_df
merged_df <- rbind(train_df, test_df)

# filter and select columns (mean or std)
col_id <- features$V1[grep("mean|std", features$V2)]
col_id_new <- col_id +2  # increment column counter by 2, as two additional columns were bound to df (subject, y_test)
col_id_new <- prepend(col_id_new, c(1,2))
merged_df <- merged_df[,col_id_new]

# add columns labels
colnames(merged_df) <-  c("subject", "activity", grep("mean|std", features$V2, value=TRUE))

# change activity labels to human readable names
# activity defintions
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
merged_df$activity <- factor(merged_df$activity, labels= c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# create a tidy dataset
meltedData <- melt(merged_df, id = c("subject", "activity"))
tidyData <- dcast(meltedData, subject + activity ~ variable, mean)

write.table(tidyData, "./tidy_dataset.txt", row.names = FALSE)
