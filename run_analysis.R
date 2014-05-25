features <- read.table("~/UCI HAR Dataset/features.txt")
act.labels <- read.table("~/UCI HAR Dataset/activity_labels.txt")
train <- read.table("~/UCI HAR Dataset/train/X_train.txt")
subj.train <- read.table("~/UCI HAR Dataset/train/subject_train.txt")
y.train <- read.table("~/UCI HAR Dataset/train/y_train.txt")
test <- read.table("~/UCI HAR Dataset/test/X_test.txt")
subj.test <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
y.test <- read.table("~/UCI HAR Dataset/test/y_test.txt")

data <- rbind(train, test)
subj <- rbind(subj.train, subj.test)
act.num <- rbind(y.train, y.test)
act <- act.labels[match(act.num$V1, act.labels$V1),]

colnames(data) <- features[,2]
colnames(subj) <- "subject"
colnames(act) <- c("activity.num", "activity.names")
sel.mean <- grep("mean()", colnames(data), value = TRUE, fixed = TRUE)
sel.std <- grep("std()", colnames(data), value = TRUE, fixed = TRUE)
sel.col <- c(sel.mean, sel.std)
data <- data[,sel.col]
colnames(data) <- gsub("-", ".", colnames(data))
colnames(data) <- gsub("\\(|\\)", "", colnames(data))
data <- cbind(subj, act, data)

meltData <- melt(data, id.vars = c(1,3), measure.vars = c(4:length(data)))
tidyData <- dcast(meltData, subject + activity.names ~ variable, mean)
write.table(tidyData, "~/tidyData.txt", sep="\t", row.names = FALSE)