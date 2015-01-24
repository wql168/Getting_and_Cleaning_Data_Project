==================================================================
##Getting and Cleaning Data Course Project






###INTRODUCTION


The requirements for this project are available at: https://class.coursera.org/getdata-010/human_grading/view/courses/973497/assessments/3/submissions

The purpose of this project is to demonstrate the ability of a student to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The data for this project is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

the data was collected by Anguita et al. in a recent experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The project requires submission of a R script file, a README.md, a code book file, and a tidy data file uploaded to a repo created for this project at github.com.






###LIST OF FILES


For this project:

The repo is named "Getting_and_Cleaning_Data_Project", and is located at https://github.com/wql168/Getting_and_Cleaning_Data_Project.

The following files are uploaded to the above repo:


	run_analysis.R			R script file	

	README.md				Readme file

	CODEBOOK.md				Code book file

	Step5_data_file.txt		tidy data file



	
	
	
###NOTES 


- The R script file run_analysis.R was created with the RStudio Version 0.98.1091.
- To run the run_analysis.R file, the data should be downloaded from the https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and then unzipped to a certain folder.
  For example, the download zip file is extracted to the following folder:
  "C:\xxxx\Coursera_courses\Getting and Cleaning Data\Project\UCI HAR Dataset"
  Then the above folder is set as the working directory in RStudio, and unzipped data located in the ./UCI HAR Dataset folder can be read with the run_analysis.R script file.
- The tidy data file Step5_data_file.txt has 180 rows included, and 69 columns.
- Additional information about the data as well as the R script file can be found in the CODEBOOK.md file also located in this repo.

For more information about this project contact the course staff of this online course.






###CITATIONS


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

