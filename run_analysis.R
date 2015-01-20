setwd(".\\JHUDataScienceSeries\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset")
getwd()

library(data.table)

xTest<- read.table(".\\test\\X_test.txt")
yTest <- read.table(".\\test\\Y_test.txt")
subjectTest <- read.table(".\\test\\subject_test.txt")

xTrain<- read.table(".\\train\\X_train.txt")
yTrain <- read.table(".\\train\\Y_train.txt")
subjectTrain <- read.table(".\\train\\subject_train.txt")

labels <- read.table(".\\features.txt")
activityLabel <- read.table(".\\activity_labels.txt")

colnames(xTest) <- labels[,2]
colnames(xTrain) <- labels[,2]
colnames(yTest) <- c("Activity")
colnames(yTrain) <- c("Activity")
colnames(subjectTest) <- c("Subject")
colnames(subjectTrain) <- c("Subject")

testAll <- cbind(xTest, yTest)
trainAll <- cbind(xTrain, yTrain)

dataAll <- rbind(trainAll, testAll)
activityAll <- rbind(yTrain, yTest)
subjectAll <- rbind(subjectTrain, subjectTest)

meanData<- dataAll[grepl("mean()", names(dataAll))]
stdData <- dataAll[grepl("std()", names(dataAll))]

msData <- cbind(subjectAll, meanData, stdData, activityAll)

msData$Activity[msData$Activity == 1] <-  "WALKING"
msData$Activity[msData$Activity == 2] <-  "WALKING_UPSTAIRS"
msData$Activity[msData$Activity == 3] <-  "WALKING_DOWNSTAIRS"
msData$Activity[msData$Activity == 4] <-  "SITTING"
msData$Activity[msData$Activity == 5] <-  "STANDING"
msData$Activity[msData$Activity == 6] <-  "LAYING"

dataTidy <- aggregate(x=msData[,2:80], by = list(msData$Subject, msData$Activity), FUN = "mean")
names <- colnames(dataTidy)
names[1:2] <- c("Subject", "Activity")
colnames(dataTidy) <- names

write.table(dataTidy, file="tidyData_means.txt", row.names = FALSE)
