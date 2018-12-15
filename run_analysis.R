---
title: "Coursera Capstone Project"
author: "Nipunjeet Gujral"
output: 
  html_document:
  theme: flatly
  highlight: haddock
---


```{r}
#Merge ALL the data
#Load relevant libraries; in this case, it's the plyr and dplyr library. 
library(plyr)
library(dplyr)
```

#1. Merges the training and test sets to create one data set. 
#Firstly, data must be downloaded. 

```{r message=FALSE, warning=FALSE}
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"
if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

#Create variables for both train and test subset of text data. After reviewing the readme text, I narrowed down the
#relevant variables, I created a variable for each text dataframe. 
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
fts<-read.table("UCI HAR Dataset/features.txt")
activity_label<-read.table("UCI HAR Dataset/activity_labels.txt")


y_train<-join(y_train, activity_label)
y_test<-join(y_test, activity_label)
HumanData<-rbind(cbind(x_train, y_train,subject_train), cbind(x_test, y_test, subject_test))

#Name the columns.
colnames(HumanData) <- c((as.character(fts[,2])), "activity", "activity label", "subject")
```

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 

```{r}
tidy_data<-data.frame((HumanData[grep("[Mm]ean|[Ss]td",
                                      colnames(HumanData), value=TRUE)]), 
                                      "subject" = HumanData$subject, 
                                      "activity"=HumanData$activity, 
                                      "activity label"=HumanData$`activity label`)
```

#3. "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

```{r}
complete_set<-tidy_data %>% 
  group_by(subject, activity.label) %>% 
  summarize_all(funs(mean))

write.csv(complete_set, file = "./complete_set.txt")
```



