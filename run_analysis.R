# This is for the "Getting and Cleaning Data Course Project".

# The data being worked on is from: 
# Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
# Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted 
# Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# This R script is to create a tidy data set from the Auguita et al. data, with the following 5 steps:


# Step 1: Merges the training and the test sets to create one data set.

# Read the X_train.txt and the X_test.txt files into the compl_data:
# The column names of training set is also read from the features.txt, and the col names are assigned into a factor, 
# and included in the above read.table statement. 
# Note that the colnames have been cleaned to remove the illegal characters as required by Step 4.
compl_data <- rbind(read.table('./train/X_train.txt',sep = ""), read.table('./test/X_test.txt',sep = ""))

colnames(compl_data) <- gsub(",","_", gsub("-", "_", gsub("\\)","", 
      gsub("\\(", "", as.vector(read.table('./features.txt')[["V2"]])))))


# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

# The compl_data data set has 10299 rows and 561 columns. Get only the columns with only the measurements on the mean 
# and standard deviation for each measurement:
dataset <- (cbind(compl_data[grep("std", colnames(compl_data))], compl_data[grep("mean", colnames(compl_data))]))

# As we only want the std() and mean() columns, those with meanFreq() are to be removed:
dataset_cleaned <- dataset[-grep("meanFreq", colnames(dataset))]


# Step 3: Uses descriptive activity names to name the activities in the data set

# So far we have got a data set with 66 columns. Next step is to add the train_label info, 
# the activity name info, and the subject info into the above data set.

# Read the activity_labels into a data set and assign the column a descriptive name, the resulting activity_labels 
# data set has 10299 rows and one column.
activity_labels <- rbind(read.table('./train/y_train.txt',sep = "", col.names = c("Activity_label_ID" )),
                    read.table('./test/y_test.txt',sep = "", col.names = c("Activity_label_ID" )))

# Read the subject_ID into a data set and assign the column a descriptive name, the resulting subject_ids data set 
# has 10299 rows and one column.
subject_ids <- rbind(read.table('./train/subject_train.txt',col.names = c("Subject_ID")),
                     read.table('./test/subject_test.txt',col.names = c("Subject_ID")))

# So far all three datasets are combined with cbind:
dataset2 <- cbind(subject_ids, activity_labels, dataset_cleaned)

# Read the activity_labels.txt into the activity_names data set with names assigned:
activity_names <- read.table('./activity_labels.txt',sep = "", col.names = c("Activity_label_ID","Activity_Name") )

# Join the dataset2 and the activity_names data sets with the class labels. The resulting data set has the activity 
# labels as well as  the activity names.
dataset3 <- merge(dataset2,activity_names,by.x="Activity_label_ID", by.y="Activity_label_ID",all=TRUE)


# Step 4: Appropriately labels the data set with descriptive variable names. 

# This step to remove the illegal characters such as "(", ")", "-", "," from the colnames with the gsub functions has 
# been included in the Step 1.
# The write.table statement writes the 10299 rows of data, with 69 columns in each row, into a text file.
write.table(dataset3, "./step_4_tidy_data.txt", sep="    ", col.names = TRUE, eol = "\n")


# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.

# As the functions used in this section requires "reshape2" package, it needs to be installed and called into library.
if (!("reshape2" %in% rownames(installed.packages()))) {install.packages("reshape2")}

library(reshape2)

# Use the melt() function so that each row is a unique id-variable combination. 
dataset3_melt <- melt(dataset3,id=c("Subject_ID","Activity_label_ID","Activity_Name"))

# Use the dcast() to cast a molten data frame into a data frame.
dataset3_mean <- dcast(dataset3_melt, Subject_ID+Activity_label_ID+Activity_Name ~ variable, mean)

# The ddply() function helps to check the number of rows group by the Subject_ID and the Activity_label_ID:
# library(plyr)
# ddply(dataset3, .(dataset3$Subject_ID, dataset3$Activity_label_ID), nrow);

# Then write the data frame casted by the dcast function into a .txt file:
write.table(dataset3_mean[order(as.numeric(dataset3_mean$Subject_ID), as.numeric(dataset3_mean$Activity_label_ID)), ],
            "./step_5_tidy_data.txt", sep="    ", col.names = TRUE, row.names = FALSE, eol = "\n")