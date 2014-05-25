READ ME: How run_analysis.R script works
========================================

## Part I: Import files

* use `read.table` to read text files from `UCI HAR Dataset` directory.
* import library using `library` command. For this script we need `reshape2` package.

```
library(reshape2)
features <- read.table("~/UCI HAR Dataset/features.txt")
act.labels <- read.table("~/UCI HAR Dataset/activity_labels.txt")
train <- read.table("~/UCI HAR Dataset/train/X_train.txt")
subj.train <- read.table("~/UCI HAR Dataset/train/subject_train.txt")
y.train <- read.table("~/UCI HAR Dataset/train/y_train.txt")
test <- read.table("~/UCI HAR Dataset/test/X_test.txt")
subj.test <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
y.test <- read.table("~/UCI HAR Dataset/test/y_test.txt")
```

## Part II: combine Train and Test datasets

* we can observe the data in Train and Test sets are in pair, including subject data, activity data, and feature data.
* so we combind those data sets using `rbind` to connect by rows.

```
data <- rbind(train, test)
subj <- rbind(subj.train, subj.test)
act.num <- rbind(y.train, y.test)
```

## Part III: Label activity numbers into descriptive activity names

* use the `match` command to look up activity numbers data (dummy variable V1) on the activity labels data (from `activity_labels.txt`). This will return index data of label data that match with order of the experiment activity numbers data.
* use the obtained index to project activity labels upon the experiment data order.

```
act <- act.labels[match(act.num$V1, act.labels$V1),]
```

## Part IV: Assign column names for subject data, activity data, and feature data.

* use `colnames` to set column names of each datasets.
* For Feature data, we can parse column names from character vector obtained from `features.txt`.
* For Subject and Activity data, we set up names called "subject", "activity.num", "activity.names" respectively.

```
colnames(data) <- features[,2]
colnames(subj) <- "subject"
colnames(act) <- c("activity.num", "activity.names")
```

## Part V: Extract the columns from Feature Data based on the criteria.

### Part V-I: get selected variables which involve mean and std measurements

* My criteria for variables that involve mean and std measurements is that their column names must contain string "mean()" or "std()"
* use `grep` command to look up for keywords ("mean()" and "std()") in the column names vector of the Feature data. Make sure to turn argument `value = TRUE` to get actual column names and `fixed = TRUE` so that patterns are matched as is.
* make a character vector that contain selected variable names.

```
sel.mean <- grep("mean()", colnames(data), value = TRUE, fixed = TRUE)
sel.std <- grep("std()", colnames(data), value = TRUE, fixed = TRUE)
sel.col <- c(sel.mean, sel.std)
```

### Part V-II: Extract the selected columns from feature data.

* subset the feature data based on the selected column names vector.

```
data <- data[,sel.col]
```

## Part VI: Rename columns names into appropriately named labels.

* Appropriate variable names shouldn't contain character '-' and '()', which appeared in this data.
* use `gsub` to replace '-' with '.' which is a better separator.
* use `gsub` to replace '(' and ')' with {blank} so that they are erased. Note that we will need "\\" to clarify that '()' is character not the sign.

```
colnames(data) <- gsub("-", ".", colnames(data))
colnames(data) <- gsub("\\(|\\)", "", colnames(data))
```

## Part VI: Combine all data together including Subjects, Activities, and Feature Data part.

* we can observe the data in Subjects, Activities, and Feature Data have the same amount of observations.
* so we combind those data sets using `cbind` to connect by columns.

```
data <- cbind(subj, act, data)
```

## Part VI: Reshape the combined data into new independent tidy data set with the average of each variable for each activity and each subject.

* We would like our tidy data to aggregate the average of each variable for each activity and each subject.
* use `melt` command from `reshape2` package to melt the data. ID variables are `subject` and `activity.names` as we want to focus on per our objective. The measurement variables are the feature data (rest of the dataframe) as we want to aggregate the average per our objective.
* then reshape the melted data using `dcast` with `subject` + `activity.names` as `x` and `variable` as `y`. Aggregate function is `mean` as our objective.

```
meltData <- melt(data, id.vars = c(1,3), measure.vars = c(4:length(data)))
tidyData <- dcast(meltData, subject + activity.names ~ variable, mean)
```

## Part VII: Rename columns names of tidy dataset.

* As the tidy data set reflects average values for each activity and each subject, we should rename the variable with "average" prefix.
* use `paste` to add the word "average" into the feature data column names with separated by "." and parse them onto tidy data set column names using `colnames` command (leave the `subject` and `activity.names` variable intact).

```
colnames(tidyData) <- c(colnames(tidyData[,(1:2)]), paste("average", colnames(tidyData[,-(1:2)]), sep = "."))
```

### Part VII: Export the tidy data set into a tab delimited text file in working directory.

* use `write.table` to export tidy data into text file in working directory. Use `sep = "\t"` to use tab as delimiter. As we don't have particular row names set `row.names = FALSE`.

```
write.table(tidyData, "~/tidyData.txt", sep="\t", row.names = FALSE)
```