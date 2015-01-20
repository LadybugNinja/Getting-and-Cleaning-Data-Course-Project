---
title: "CodeBook"
author: "LadybugNinja"
date: "Tuesday, January 20, 2015"
output: html_document
---
      	
The 'run_analysis.R' extracts all values with mean or std in the variable name.  The variables are unitless, as the authors have noted that the values are normalized.  The variables are as follows:

VariableName | Description
---|---
tBodyAcc-mean()-X      |	Mean value	of	x axis	body acceleration signals
tBodyAcc-mean()-Y	|	Mean value	of	y axis	body acceleration signals
tBodyAcc-mean()-Z	|	Mean value	of	z axis 	body acceleration signals
tBodyAcc-std()-X	|	Standard deviation	of	x axis	body acceleration signals
tBodyAcc-std()-Y	|	Standard deviation	of	y axis	body acceleration signals
tBodyAcc-std()-Z	|	Standard deviation	of	z axis 	body acceleration signals
tGravityAcc-mean()-X	|	Mean value	of	x axis	gravity acceleration signals
tGravityAcc-mean()-Y	|	Mean value	of	y axis	gravity acceleration signals
tGravityAcc-mean()-Z	|	Mean value	of	z axis 	gravity acceleration signals
tGravityAcc-std()-X	|	Standard deviation	of	x axis	gravity acceleration signals
tGravityAcc-std()-Y	|	Standard deviation	of	y axis	gravity acceleration signals
tGravityAcc-std()-Z	|	Standard deviation	of	z axis 	gravity acceleration signals
tBodyAccJerk-mean()-X	|	Mean value	of	x axis	body linear acceleration derived over time
tBodyAccJerk-mean()-Y	|	Mean value	of	y axis	body linear acceleration derived over time
tBodyAccJerk-mean()-Z	|	Mean value	of	z axis 	body linear acceleration derived over time
tBodyAccJerk-std()-X	|	Standard deviation	of	x axis	body linear acceleration derived over time
tBodyAccJerk-std()-Y	|	Standard deviation	of	y axis	body linear acceleration derived over time
tBodyAccJerk-std()-Z	|	Standard deviation	of	z axis 	body linear acceleration derived over time
tBodyGyro-mean()-X	|	Mean value	of	x axis	angular velocity
tBodyGyro-mean()-Y	|	Mean value	of	y axis	angular velocity
tBodyGyro-mean()-Z	|	Mean value	of	z axis 	angular velocity
tBodyGyro-std()-X	|	Standard deviation	of	x axis	angular velocity
tBodyGyro-std()-Y	|	Standard deviation	of	y axis	angular velocity
tBodyGyro-std()-Z	|	Standard deviation	of	z axis 	angular velocity
tBodyGyroJerk-mean()-X	|	Mean value	of	x axis	angular velocity derived over time
tBodyGyroJerk-mean()-Y	|	Mean value	of	y axis	angular velocity derived over time
tBodyGyroJerk-mean()-Z	|	Mean value	of	z axis 	angular velocity derived over time
tBodyGyroJerk-std()-X	|	Standard deviation	of	x axis	angular velocity derived over time
tBodyGyroJerk-std()-Y	|	Standard deviation	of	y axis	angular velocity derived over time
tBodyGyroJerk-std()-Z	|	Standard deviation	of	z axis 	angular velocity derived over time
tBodyAccMag-mean()	|	Mean value	of		magnitude of body linear acceleration using Euclidean norm
tBodyAccMag-std()	|	Standard deviation	of		magnitude of body linear acceleration using Euclidean norm
tGravityAccMag-mean()	|	Mean value	of		magnitude of gravity acceleration using Euclidean norm
tGravityAccMag-std()	|	Standard deviation	of		magnitude of gravity acceleration using Euclidean norm
tBodyAccJerkMag-mean()	|	Mean value	of		magnitude of body linear acceleration derived in time
tBodyAccJerkMag-std()	|	Standard deviation	of		magnitude of body linear acceleration derived in time
tBodyGyroMag-mean()	|	Mean value	of		magnitude of angular velocity using Euclidean norm
tBodyGyroMag-std()	|	Standard deviation	of		magnitude of angular velocity using Euclidean norm
tBodyGyroJerkMag-mean()	|	Mean value	of		magnitude of angular velocity derived in time
tBodyGyroJerkMag-std()	|	Standard deviation	of		magnitude of angular velocity derived in time
fBodyAcc-mean()-X	|	Mean value	of	x axis	Fast Fourier Transform of body linear acceleration
fBodyAcc-mean()-Y	|	Mean value	of	y axis	Fast Fourier Transform of body linear acceleration
fBodyAcc-mean()-Z	|	Mean value	of	z axis 	Fast Fourier Transform of body linear acceleration
fBodyAcc-std()-X	|	Standard deviation	of	x axis	Fast Fourier Transform of body linear acceleration
fBodyAcc-std()-Y	|	Standard deviation	of	y axis	Fast Fourier Transform of body linear acceleration
fBodyAcc-std()-Z	|	Standard deviation	of	z axis 	Fast Fourier Transform of body linear acceleration
fBodyAcc-meanFreq()-X	|	Weighted average of the frequency components to obtain a mean frequency	of	x axis	Fast Fourier Transform of body linear acceleration
fBodyAcc-meanFreq()-Y	|	Weighted average of the frequency components to obtain a mean frequency	of	y axis	Fast Fourier Transform of body linear acceleration
fBodyAcc-meanFreq()-Z	|	Weighted average of the frequency components to obtain a mean frequency	of	z axis 	Fast Fourier Transform of body linear acceleration
fBodyAccJerk-mean()-X	|	Mean value	of	x axis	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-mean()-Y	|	Mean value	of	y axis	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-mean()-Z	|	Mean value	of	z axis 	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-std()-X	|	Standard deviation	of	x axis	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-std()-Y	|	Standard deviation	of	y axis	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-std()-Z	|	Standard deviation	of	z axis 	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-meanFreq()-X	|	Weighted average of the frequency components to obtain a mean frequency	of	x axis	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-meanFreq()-Y	|	Weighted average of the frequency components to obtain a mean frequency	of	y axis	Fast Fourier Transform of body linear acceleration derived in time
fBodyAccJerk-meanFreq()-Z	|	Weighted average of the frequency components to obtain a mean frequency	of	z axis 	Fast Fourier Transform of body linear acceleration derived in time
fBodyGyro-mean()-X	|	Mean value	of	x axis	Fast Fourier Transform of angular velocity
fBodyGyro-mean()-Y	|	Mean value	of	y axis	Fast Fourier Transform of angular velocity
fBodyGyro-mean()-Z	|	Mean value	of	z axis 	Fast Fourier Transform of angular velocity
fBodyGyro-std()-X	|	Standard deviation	of	x axis	Fast Fourier Transform of angular velocity
fBodyGyro-std()-Y	|	Standard deviation	of	y axis	Fast Fourier Transform of angular velocity
fBodyGyro-std()-Z	|	Standard deviation	of	z axis 	Fast Fourier Transform of angular velocity
fBodyGyro-meanFreq()-X	|	Weighted average of the frequency components to obtain a mean frequency	of	x axis	Fast Fourier Transform of angular velocity
fBodyGyro-meanFreq()-Y	|	Weighted average of the frequency components to obtain a mean frequency	of	y axis	Fast Fourier Transform of angular velocity
fBodyGyro-meanFreq()-Z	|	Weighted average of the frequency components to obtain a mean frequency	of	z axis 	Fast Fourier Transform of angular velocity
fBodyAccMag-mean()	|	Mean value	of		magnitude of Fast Fourier Transform of body linear acceleration
fBodyAccMag-std()	|	Standard deviation	of		magnitude of Fast Fourier Transform of body linear acceleration
fBodyAccMag-meanFreq()	|	Weighted average of the frequency components to obtain a mean frequency	of		magnitude of Fast Fourier Transform of body linear acceleration
fBodyBodyAccJerkMag-mean()	|	Mean value	of		magnitude of Fast Fourier Transform of body linear acceleration derived in time
fBodyBodyAccJerkMag-std()	|	Standard deviation	of		magnitude of Fast Fourier Transform of body linear acceleration derived in time
fBodyBodyAccJerkMag-meanFreq()	|	Weighted average of the frequency components to obtain a mean frequency	of		magnitude of Fast Fourier Transform of body linear acceleration derived in time
fBodyBodyGyroMag-mean()	|	Mean value	of		magnitude of Fast Fourier Transform of angular velocity
fBodyBodyGyroMag-std()	|	Standard deviation	of		magnitude of Fast Fourier Transform of angular velocity
fBodyBodyGyroMag-meanFreq()	|	Weighted average of the frequency components to obtain a mean frequency	of		magnitude of Fast Fourier Transform of angular velocity
fBodyBodyGyroJerkMag-mean()	|	Mean value	of		magnitude of Fast Fourier Transform of angular velocity derived in time
fBodyBodyGyroJerkMag-std()	|	Standard deviation	of		magnitude of Fast Fourier Transform of angular velocity derived in time
fBodyBodyGyroJerkMag-meanFreq()	|	Weighted average of the frequency components to obtain a mean frequency	of		magnitude of Fast Fourier Transform of angular velocity derived in time

				
				
				
				
				
				
				


