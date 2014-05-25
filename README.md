explained what those variables are and your criteria for picking them in the readMe
You should include a README.md in the repo describing how the script works. 
You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
READ ME
=======

## How run_analysis.R script works

### Part I: Import files

* use 'read.table' to read text files from "UCI HAR Dataset" directories
* import library using 'library'

library(reshape2)
features <- read.table("~/UCI HAR Dataset/features.txt")
act.labels <- read.table("~/UCI HAR Dataset/activity_labels.txt")
train <- read.table("~/UCI HAR Dataset/train/X_train.txt")
subj.train <- read.table("~/UCI HAR Dataset/train/subject_train.txt")
y.train <- read.table("~/UCI HAR Dataset/train/y_train.txt")
test <- read.table("~/UCI HAR Dataset/test/X_test.txt")
subj.test <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
y.test <- read.table("~/UCI HAR Dataset/test/y_test.txt")

### Part II: combine Train and Test datasets

## combine train and test datasets for each parts
data <- rbind(train, test)
subj <- rbind(subj.train, subj.test)
act.num <- rbind(y.train, y.test)

## recode activity numbers into descriptive activity names
act <- act.labels[match(act.num$V1, act.labels$V1),]

## assign column names for each parts
colnames(data) <- features[,2]
colnames(subj) <- "subject"
colnames(act) <- c("activity.num", "activity.names")

## get selected column names which involve mean and std measurements
sel.mean <- grep("mean()", colnames(data), value = TRUE, fixed = TRUE)
sel.std <- grep("std()", colnames(data), value = TRUE, fixed = TRUE)
sel.col <- c(sel.mean, sel.std)

## extract the selected columns from feature data
data <- data[,sel.col]

## rename columns names into appropriately labels
colnames(data) <- gsub("-", ".", colnames(data))
colnames(data) <- gsub("\\(|\\)", "", colnames(data))

## combine subjects part, activity part, and data part together
data <- cbind(subj, act, data)

## reshape data into new independent tidy data set with the average of each variable
## for each activity and each subject
meltData <- melt(data, id.vars = c(1,3), measure.vars = c(4:length(data)))
tidyData <- dcast(meltData, subject + activity.names ~ variable, mean)

## rename columns names of tidy dataset as they reflects average value for each
## activity and each subject
colnames(tidyData) <- c(colnames(tidyData[,(1:2)]), paste("average", colnames(tidyData[,-(1:2)]), sep = "."))

## export the tidy data into a tab delimited text file in working directory
write.table(tidyData, "~/tidyData.txt", sep="\t", row.names = FALSE)