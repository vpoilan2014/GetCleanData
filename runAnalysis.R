runAnalysis <- function() {
    library(plyr)
    library(dplyr)
    library(reshape2)
    setwd("./UCI HAR Dataset/")
#     Merges the training and the test sets to create one data set.
#     Extracts only the measurements on the mean and standard deviation 
#     for each measurement. 
#     Uses descriptive activity names to name the activities in the data set
#     Appropriately labels the data set with descriptive variable names. 
#     From the data set in step 4, creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject.
    
#   read test and training datasets and merge them to one data set
    dfTest<- read.table("./test/X_test.txt")
    dfTrain<- read.table("./train/X_train.txt")
    dfAll<-rbind(dfTest, dfTrain)
    
    #     2. Extracts only the measurements on the mean and standard deviation 
    #     for each measurement. 
    features <- read.table("./features.txt", stringsAsFactors = FALSE)
    fMeanStd<- filter(features, grepl(pattern = "-mean|-std",features$V2))
    numRows <- nrow(dfAll)
    numCols <- nrow(fMeanStd)
    lookupDF <- data.frame(
    strPattern = c("^t", "^f", "Acc", "mean", "std","()"),
    strReplace = c("Time", "Frequency", "Acceleration","Mean","StdDeviation",""))
    #Backup the original feature names for codebook
    fMeanStdOrig <- fMeanStd
    #fMeanStd$V3 <- sapply(fMeanStd$V2, function(x){
    #    for(i in 1:nrow(lookupDF))
    #        fMeanStd$V3 <- sapply(fMeanStd$V2, gsub, 
    #            pattern=as.character(lookupDF$strPattern[i]), 
    #           replacement= as.character(lookupDF$strReplace[i]))
    #})
    fMeanStd$V2 <- sapply(fMeanStd$V2, gsub, pattern="^t",replacement="Time")
    fMeanStd$V2 <- sapply(fMeanStd$V2, gsub, pattern="^f",replacement="Freq")
    fMeanStd$V2 <- sapply(fMeanStd$V2, gsub, pattern="-mean",replacement="Mean")
    fMeanStd$V2 <- sapply(fMeanStd$V2, gsub, pattern="-std",replacement="StdDev")


    #write.table(data.frame(fMeanStdOrig$V2, fMeanStd$V2), file="./CodeBook.md", col.names=FALSE, sep="    ")
    dfMeanStd <- select(dfAll, fMeanStd$V1)
  
#     3. Uses descriptive activity names to name the activities in the data set
#     Appropriately labels the data set with descriptive variable names. 
    activityLabels.Test <- read.table("./test/y_test.txt")
    activityLabels.Train <- read.table("./train/y_train.txt")
    activityLabels.All <- rbind(activityLabels.Test, activityLabels.Train)
    activityLabelDesc <- read.table("./activity_labels.txt")
    activityLabels.All <- join(activityLabels.All, activityLabelDesc, by = "V1")
    

    #merge Activity labels
    dfMeanStd <- cbind(dfMeanStd, activityLabels.All$V2)
    
    #merge subjects
    subj.test <- read.table("./test//subject_test.txt")
    subj.train <- read.table("./train//subject_train.txt")
    dfMeanStd <- cbind(dfMeanStd, rbind(subj.test, subj.train))
    
    #Give descriptive Column Names for all the variables using feature names
    colnames <- c(fMeanStd$V2, "ActivityName", "Subject")
    colnames(dfMeanStd) <- colnames
    
    dfMeanStd.melt <- melt(dfMeanStd, id=c("ActivityName", "Subject"), measure.vars=fMeanStd$V2) 
    dfMeanStd.Tidy <- dcast(dfMeanStd.melt, ActivityName + Subject ~ variable, mean)
    setwd("../")
    write.table(dfMeanStd.Tidy, "./Tidy.MeanStd.txt", row.names=FALSE)
}