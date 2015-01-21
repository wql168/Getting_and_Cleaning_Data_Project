## Code Book

### 1. Introduction

This code book is for the R script file run_analysis.R in the repo named and located at .

### 2. About the data

The data used in this R script file is from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data was collected by Anguita et al. in a recent experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Further information about the data sets is available in the README.txt as well as files in the downloaded .zip file from the above provided link.

The purpose of this R script file is to prepare a tidy dataset that can be used for later analysis. 


2.1 Variables names

There are totally 69 variables included in the resulting dataset of running this R script file against the source data sets:

"Subject_ID"                
"Activity_label_ID"         
"Activity_Name"             
"tBodyAcc_std_X"           
"tBodyAcc_std_Y"            
"tBodyAcc_std_Z"            
"tGravityAcc_std_X"         
"tGravityAcc_std_Y"        
"tGravityAcc_std_Z"         
"tBodyAccJerk_std_X"        
"tBodyAccJerk_std_Y"        
"tBodyAccJerk_std_Z"       
"tBodyGyro_std_X"           
"tBodyGyro_std_Y"           
"tBodyGyro_std_Z"           
"tBodyGyroJerk_std_X"      
"tBodyGyroJerk_std_Y"       
"tBodyGyroJerk_std_Z"       
"tBodyAccMag_std"           
"tGravityAccMag_std"       
"tBodyAccJerkMag_std"       
"tBodyGyroMag_std"          
"tBodyGyroJerkMag_std"      
"fBodyAcc_std_X"           
"fBodyAcc_std_Y"            
"fBodyAcc_std_Z"            
"fBodyAccJerk_std_X"        
"fBodyAccJerk_std_Y"       
"fBodyAccJerk_std_Z"        
"fBodyGyro_std_X"           
"fBodyGyro_std_Y"           
"fBodyGyro_std_Z"          
"fBodyAccMag_std"           
"fBodyBodyAccJerkMag_std"   
"fBodyBodyGyroMag_std"      
"fBodyBodyGyroJerkMag_std" 
"tBodyAcc_mean_X"           
"tBodyAcc_mean_Y"           
"tBodyAcc_mean_Z"           
"tGravityAcc_mean_X"       
"tGravityAcc_mean_Y"        
"tGravityAcc_mean_Z"        
"tBodyAccJerk_mean_X"       
"tBodyAccJerk_mean_Y"      
"tBodyAccJerk_mean_Z"      
"tBodyGyro_mean_X"          
"tBodyGyro_mean_Y"          
"tBodyGyro_mean_Z"         
"tBodyGyroJerk_mean_X"      
"tBodyGyroJerk_mean_Y"      
"tBodyGyroJerk_mean_Z"      
"tBodyAccMag_mean"         
"tGravityAccMag_mean"       
"tBodyAccJerkMag_mean"      
"tBodyGyroMag_mean"         
"tBodyGyroJerkMag_mean"    
"fBodyAcc_mean_X"           
"fBodyAcc_mean_Y"           
"fBodyAcc_mean_Z"           
"fBodyAccJerk_mean_X"      
"fBodyAccJerk_mean_Y"       
"fBodyAccJerk_mean_Z"       
"fBodyGyro_mean_X"          
"fBodyGyro_mean_Y"         
"fBodyGyro_mean_Z"          
"fBodyAccMag_mean"          
"fBodyBodyAccJerkMag_mean"  
"fBodyBodyGyroMag_mean"    
"fBodyBodyGyroJerkMag_mean"

2.2. Variable format:

Of the variables, the "Activity_Name" variable has values in character strings. The available values are:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The "Subject_ID" variable identifies the 30 subjects that were included in the experiment. It has values ranging from 1 to 30.

The "Activity_label_ID" identifies "Activity_Name" listed above. This variables has values ranging from 1 to 6.

All other variables have numeric values and are either means (identified with a mean in the variable names) or a standard deviations (identified by a std in the variable names) of the measurement results.

2.3 Missing or inapplicable data:

There is no data missing or inapplicable in this dataset.


### 3. Data processing

3.1 RStudio version:

This R script file was prepared with RStudio Version 0.98.1091.

3.2 Package requirements:

This R script requires installation of the following packages: 

"reshape2"

3.3 R functions:

This R script uses the following functions:
 
read.table()
colnames()
gsub()
rbind()
cbind()
grep()
library()
merge()
write.table
melt()
dcast()

This R script may require to call the install.packages:

install.packages()


### 4. R script running:

To run this R script, download the data file from the link provided in the above 1. Introduction, and unzip the contents to a certain directory. In the RStudio, set the content directory ".../UCI HAR Dataset" as the working directory.

For example, the working directory can be:

# > getwd()
# [1] "C:/xxxxxx/xxxxxx/Getting and Cleaning Data/Course_Project/UCI HAR Dataset"















