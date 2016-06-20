run_analysis <- function(){
  
  ## Question 1: Merges the training and the test sets to create one data set
  
  ## first combine X_test.txt and X_train.txt
  train_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/X_train.txt", sep="\t")
  nrow(train_x)
  test_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/test/X_test.txt", sep="\t")
  nrow(test_x)
  total_x <- rbind(train_x, test_x)
  nrow(total_x)
  
  
  
  ## merge y_train and y_test
  train_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/y_train.txt", sep="\t")
  nrow(train_y)
  test_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/test/y_test.txt", sep="\t")
  nrow(test_y)
  total_y <- rbind(train_y, test_y)
  nrow(total_y)
  
  
  
  ## merge subject_train and subject_test
  train_subject <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/subject_train.txt", sep="\t")
  nrow(train_subject)
  test_subject <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/test/subject_test.txt", sep="\t")
  nrow(test_subject)
  total_subject <- rbind(train_subject, test_subject)
  nrow(total_subject)
  
  ## merge Inertial Signals/body_acc_x_test  and Inertial Signals/body_acc_x_train
  train_body_acc_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", sep="\t")
  nrow(train_body_acc_x)
  test_body_acc_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_acc_x_test.txt", sep="\t") 
  nrow(test_body_acc_x)
  total_body_acc_x <- rbind(train_body_acc_x, test_body_acc_x)
  nrow(total_body_acc_x)
  
  ## merge Inertial Signals/body_acc_y_test  and Inertial Signals/body_acc_y_train
  train_body_acc_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", sep="\t")
  nrow(train_body_acc_y)
  test_body_acc_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_acc_y_test.txt", sep="\t") 
  nrow(test_body_acc_y)
  total_body_acc_y <- rbind(train_body_acc_y, test_body_acc_y)
  nrow(total_body_acc_y)
  
  ## merge Inertial Signals/body_acc_z_test  and Inertial Signals/body_acc_z_train
  train_body_acc_z <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", sep="\t")
  nrow(train_body_acc_z)
  test_body_acc_z <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_acc_z_test.txt", sep="\t") 
  nrow(test_body_acc_z)
  total_body_acc_z <- rbind(train_body_acc_z, test_body_acc_z)
  nrow(total_body_acc_z)
  
  ## merge Inertial Signals/body_gyro_x_train  and Inertial Signals/body_gyro_x_test
  train_body_gyro_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", sep="\t")
  nrow(train_body_gyro_x)
  test_body_gyro_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_test.txt", sep="\t") 
  nrow(test_body_gyro_x)
  total_body_gyro_x <- rbind(train_body_gyro_x, test_body_gyro_x)
  nrow(total_body_gyro_x)
  
  ## merge Inertial Signals/body_gyro_y_train  and Inertial Signals/body_gyro_y_test
  train_body_gyro_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", sep="\t")
  nrow(train_body_gyro_y)
  test_body_gyro_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_test.txt", sep="\t") 
  nrow(test_body_gyro_y)
  total_body_gyro_y <- rbind(train_body_gyro_y, test_body_gyro_y)
  nrow(total_body_gyro_y)
  
  ## merge Inertial Signals/body_gyro_z_train  and Inertial Signals/body_gyro_z_test
  train_body_gyro_z <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", sep="\t")
  nrow(train_body_gyro_y)
  test_body_gyro_z <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_test.txt", sep="\t") 
  nrow(test_body_gyro_z)
  total_body_gyro_z <- rbind(train_body_gyro_z, test_body_gyro_z)
  nrow(total_body_gyro_z)
  
  ## merge Inertial Signals/total_acc_x_train  and Inertial Signals/total_acc_x_test
  train_total_acc_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", sep="\t")
  nrow(train_total_acc_x)
  test_total_acc_x <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/total_acc_x_test.txt", sep="\t") 
  nrow(test_total_acc_x)
  total_total_acc_x <- rbind(train_total_acc_x, test_total_acc_x)
  nrow(total_total_acc_x)
  
  ## merge Inertial Signals/total_acc_y_train  and Inertial Signals/total_acc_y_test
  train_total_acc_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", sep="\t")
  nrow(train_total_acc_y)
  test_total_acc_y <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/total_acc_y_test.txt", sep="\t") 
  nrow(test-total_acc_y)
  total_total_acc_y <- rbind(train_total_acc_y, test-total_acc_y)
  nrow(total_total_acc_y)
  
  ## merge Inertial Signals/total_acc_z_train  and Inertial Signals/total_acc_z_test
  train_total_acc_z <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", sep="\t")
  nrow(train_total_acc_z)
  test_total_acc_z <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/train/Inertial Signals/total_acc_z_test.txt", sep="\t") 
  nrow(test_total_acc_z)
  total_total_acc_z <- rbind(train_total_acc_z, test_total_acc_z)
  nrow(total_total_acc_z)
  ##--------------------------------------------------------------------------------------------------------------------------------
  
  
  
  
  ## Question 3: Uses descriptive activity names to name the activities in the data set
  
  final_dataset <- cbind(total_x,total_y)
  nrow(final_dataset)
  colnames(final_dataset) <- c("a","b")
  final_dataset$b[final_dataset$b == "1"] <- "WALKING"
   final_dataset$b[final_dataset$b == "2"] <- "WALKING_UPSTAIRS"
   final_dataset$b[final_dataset$b == "3"] <- "WALKING_DOWNSTAIRS"
   final_dataset$b[final_dataset$b == "4"] <- "SITTING"
   final_dataset$b[final_dataset$b == "5"] <- "STANDING"
   final_dataset$b[final_dataset$b == "6"] <- "LAYING"
 ##----------------------------------------------------------------------------------------------------------  
   
  ## Question 4: Appropriately labels the data set with descriptive variable names
   
   ## find the features name/variable names
   features <- read.table("/Users/mousumi/Documents/RProg/UCI HAR Dataset/features.txt", sep="\t")
   nrow(features)
   
   ## convert the feature frame into a vector vect containing the attributes names
   vect <- features
   vect <- as.character(unlist(vect$V1))
   
   ## create a final_dataframe 
   final_frame <- data.frame()
 
     ## N is teh no of rows in total dataset of X
     N <- nrow(total_x)
     
     ## assign the 1:561 different variables separately with their names in final_frame
    for (i in 1:200) {
     vec1 <- as.character(total_x[i,1])
     vec2 <- unlist(strsplit(vec1," +"))
     vec2 <- vec2[vec2 != ""]
     vec2_new <- data.frame(vec2)
      colnames(vec2_new) <- NULL
      vec2_new <- t(vec2_new)
      final_frame <- rbind(final_frame, vec2_new)
      
   }
   
     ## Assign the attribute names  
   colnames(final_frame) <- vect 
   
   ## combine the final_frame with total_y and total_subject
   intermediate_dataset <- cbind(total_y,total_subject)
   colnames(intermediate_dataset) <- c("activity","subject")
   
   result_dataset <- cbind(final_frame,intermediate_dataset)
 ## ---------------------------------------------------------------------------------------------------------------
     
   
   ## Question 5 : creates a second, independent tidy data set with the average of each variable for each activity and each subject
  
   
   ## average of each variable for each activity
   new_set <- matrix(, nrow = 6, ncol = 561)
   for (i in 1:561){
     final_set <- tapply(as.numeric(result_dataset[,i]) , result_dataset$activity, mean)
     new_set[,i] <- as.matrix(final_set)
    
   }
   
   ## Assign the attribute names  
   colnames(new_set) <- vect 
   ## write the average value for activity in a file
   write.table(new_set,"/Users/mousumi/Documents/RProg/UCI HAR Dataset/output_data1.txt", sep ="\t")
   
   
   ## average of each variable for each subject
   new_set_2 <- matrix(, nrow = 6, ncol = 561)
   for(i in 1:561){
     final_set_2 <- tapply(as.numeric(result_dataset[,i]) , result_dataset$subject, mean)
     new_set_2[,i] <- as.matrix(final_set)
     
   }
   
   ## Assign the attribute names  
   colnames(new_set_2) <- vect 
   
   ##write the average value for subject in a file
   write.table(new_set_2,"/Users/mousumi/Documents/RProg/UCI HAR Dataset/output_data2.txt", sep ="\t")

}