#  Getting and Cleaning Data - Course Project: Codebook

This codebook provides a brief overview for the 'tidy.txt' file.

Raw data is from the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

Test and train dataset files are merged into one dataset.

The original dataset contained multiple values for each measurement type. The mean value has been reported for each unique combination
of `subject`, `activity` and measurement.

The data within the file 'tidy.txt' contains identifiers and measurements.

### identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity being performed when measurements were taken

### measurements

* `tBodyAcc-mean()-X`
* `tBodyAcc-mean()-Y`
* `tBodyAcc-mean()-Z`
* `tBodyAcc-std()-X`             
* `tBodyAcc-std()-Y`                
* `tBodyAcc-std()-Z`                
* `tGravityAcc-mean()-X`            
* `tGravityAcc-mean()-Y`           
* `tGravityAcc-mean()-Z`            
* `tGravityAcc-std()-X`           
* `tGravityAcc-std()-Y`             
* `tGravityAcc-std()-Z`            
* `BodyAccJerk-mean()-X`           
* `tBodyAccJerk-mean()-Y`           
* `tBodyAccJerk-mean()-Z`           
* `BodyAccJerk-std()-X`           
* `tBodyAccJerk-std()-Y`            
* `tBodyAccJerk-std()-Z`            
* `tBodyGyro-mean()-X`              
* `tBodyGyro-mean()-Y`             
* `tBodyGyro-mean()-Z`              
* `tBodyGyro-std()-X`               
* `tBodyGyro-std()-Y`               
* `tBodyGyro-std()-Z`              
* `tBodyGyroJerk-mean()-X`          
* `tBodyGyroJerk-mean()-Y`          
* `tBodyGyroJerk-mean()-Z`          
* `tBodyGyroJerk-std()-X`          
* `tBodyGyroJerk-std()-Y`           
* `tBodyGyroJerk-std()-Z`           
* `tBodyAccMag-mean()`              
* `tBodyAccMag-std()`              
* `tGravityAccMag-mean()`           
* `tGravityAccMag-std()`            
* `tBodyAccJerkMag-mean()`          
* `tBodyAccJerkMag-std()`          
* `tBodyGyroMag-mean()`             
* `tBodyGyroMag-std()`              
* `tBodyGyroJerkMag-mean()`         
* `tBodyGyroJerkMag-std()`         
* `fBodyAcc-mean()-X`               
* `fBodyAcc-mean()-Y`               
* `fBodyAcc-mean()-Z`               
* `fBodyAcc-std()-X`               
* `fBodyAcc-std()-Y`                
* `fBodyAcc-std()-Z`                
* `fBodyAcc-meanFreq()-X`           
* `fBodyAcc-meanFreq()-Y`          
* `fBodyAcc-meanFreq()-Z`           
* `fBodyAccJerk-mean()-X`           
* `fBodyAccJerk-mean()-Y`           
* `fBodyAccJerk-mean()-Z`          
* `fBodyAccJerk-std()-X`            
* `fBodyAccJerk-std()-Y`            
* `fBodyAccJerk-std()-Z`            
* `fBodyAccJerk-meanFreq()-X`      
* `fBodyAccJerk-meanFreq()-Y`       
* `fBodyAccJerk-meanFreq()-Z`       
* `fBodyGyro-mean()-X`              
* `fBodyGyro-mean()-Y`             
* `fBodyGyro-mean()-Z`              
* `fBodyGyro-std()-X`               
* `fBodyGyro-std()-Y`               
* `fBodyGyro-std()-Z`              
* `fBodyGyro-meanFreq()-X`          
* `fBodyGyro-meanFreq()-Y`          
* `fBodyGyro-meanFreq()-Z`          
* `fBodyAccMag-mean()`             
* `fBodyAccMag-std()`               
* `fBodyAccMag-meanFreq()`          
* `fBodyBodyAccJerkMag-mean()`      
* `fBodyBodyAccJerkMag-std()`      
* `fBodyBodyAccJerkMag-meanFreq()`  
* `fBodyBodyGyroMag-mean()`         
* `fBodyBodyGyroMag-std()`          
* `fBodyBodyGyroMag-meanFreq()`    
* `fBodyBodyGyroJerkMag-mean()`     
* `fBodyBodyGyroJerkMag-std()`      
* `fBodyBodyGyroJerkMag-meanFreq()`
