# Getting and Cleaning Data - Course Project

The course project for the Getting and Cleaning Data Coursera course.

The purpose of the project is to to demonstrate an ability to collect, work with, and clean a data set.

The R Script, `run_analysis.R`, does the following:

1. Reads files from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Merges the test and train datasets
3. Selects measurements types with mean and standard deviation data
4. Updates columns headers
5. Applies factors to the activity levels
6. Creates a tidy data set with means for each measurements type
7. Writes tidy data set to `tidydata.txt`

## Files

* `CODEBOOK.md` describes the variables, the data, any methodology to tidy data. 

* `run_analysis.R` is the R script which reads the RAW data from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and outputs `tidydata.txt`.

* `tidydata.txt` output from the run_analysis R script in a tidy data format. Refer to `CODEBOOK.md` for more information.