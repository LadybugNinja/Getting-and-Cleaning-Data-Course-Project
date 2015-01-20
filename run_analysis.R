# Load the data.table package
library(data.table)

# Read in the Test files, the x file is the bulk of the data, the y file
# includes the activity that was occuring at the time
xTest<- read.table(".\\test\\X_test.txt")
yTest <- read.table(".\\test\\Y_test.txt")
subjectTest <- read.table(".\\test\\subject_test.txt")

# Read in the Train files, the x file is the bulk of the data, the y file
# includes the activity that was occuring at the time
xTrain<- read.table(".\\train\\X_train.txt")
yTrain <- read.table(".\\train\\Y_train.txt")
subjectTrain <- read.table(".\\train\\subject_train.txt")

# Read in the variables (for column names)
labels <- read.table(".\\features.txt")
activityLabel <- read.table(".\\activity_labels.txt")

# Label the columns accordingly as the appropriate variable, activity, or subject
colnames(xTest) <- labels[,2]
colnames(xTrain) <- labels[,2]
colnames(yTest) <- c("Activity")
colnames(yTrain) <- c("Activity")
colnames(subjectTest) <- c("Subject")
colnames(subjectTrain) <- c("Subject")

# Bind the feature data with the activity
testAll <- cbind(xTest, yTest)
trainAll <- cbind(xTrain, yTrain)

# Bind the training and testing data
dataAll <- rbind(trainAll, testAll)
activityAll <- rbind(yTrain, yTest)
subjectAll <- rbind(subjectTrain, subjectTest)

# Subset to columns that have mean or std in the variable name
meanData<- dataAll[grepl("mean()", names(dataAll))]
stdData <- dataAll[grepl("std()", names(dataAll))]

# Combine only the mean and std variables into a new table
msData <- cbind(subjectAll, meanData, stdData, activityAll)

# Relabel the activities to be more descriptive
msData$Activity[msData$Activity == 1] <-  "WALKING"
msData$Activity[msData$Activity == 2] <-  "WALKING_UPSTAIRS"
msData$Activity[msData$Activity == 3] <-  "WALKING_DOWNSTAIRS"
msData$Activity[msData$Activity == 4] <-  "SITTING"
msData$Activity[msData$Activity == 5] <-  "STANDING"
msData$Activity[msData$Activity == 6] <-  "LAYING"

# Create a tidy data set by subject and by activity, taking the mean of each variable
dataTidy <- aggregate(x=msData[,2:80], by = list(msData$Subject, msData$Activity), FUN = "mean")
names <- colnames(dataTidy)
names[1:2] <- c("Subject", "Activity")
colnames(dataTidy) <- names

# Output the table as a txt file for input into Coursera
write.table(dataTidy, file="tidyData_means.txt", row.names = FALSE)
