Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'



The final tidy data consists of the means of the  original means and std of initial features, per activity and subject


*Activity 

*Subject Id 

*BodyAcc-mean-X - MEAN

*BodyAcc-mean-Y - MEAN

*BodyAcc-mean-Z - MEAN

*BodyAcc-std-X - MEAN

*BodyAcc-std-Y - MEAN

*BodyAcc-std-Z - MEAN

*GravityAcc-mean-X - MEAN

*tGravityAcc-mean-Y - MEAN

*tGravityAcc-mean-Z - MEAN

*tGravityAcc-std-X - MEAN

*tGravityAcc-std-Y - MEAN

*tGravityAcc-std-Z - MEAN

*tBodyAccJerk-mean-X - MEAN

*tBodyAccJerk-mean-Y - MEAN

*tBodyAccJerk-mean-Z - MEAN

*tBodyAccJerk-std-X - MEAN

*tBodyAccJerk-std-Y - MEAN

*tBodyAccJerk-std-Z - MEAN

*tBodyGyro-mean-X - MEAN

*tBodyGyro-mean-Y - MEAN

*tBodyGyro-mean-Z - MEAN

*tBodyGyro-std-X - MEAN

*tBodyGyro-std-Y - MEAN

*tBodyGyro-std-Z - MEAN

*tBodyGyroJerk-mean-X - MEAN

*tBodyGyroJerk-mean-Y - MEAN

*tBodyGyroJerk-mean-Z - MEAN

*tBodyGyroJerk-std-X - MEAN

*tBodyGyroJerk-std-Y - MEAN

*tBodyGyroJerk-std-Z - MEAN

*tBodyAccMag-mean - MEAN

*tBodyAccMag-std - MEAN

*tGravityAccMag-mean - MEAN

*tGravityAccMag-std - MEAN

*tBodyAccJerkMag-mean - MEAN"

*tBodyAccJerkMag-std - MEAN"

*tBodyGyroMag-mean - MEAN"

*tBodyGyroMag-std - MEAN"

*tBodyGyroJerkMag-mean - MEAN

*tBodyGyroJerkMag-std - MEAN

*fBodyAcc-mean-X - MEAN

*fBodyAcc-mean-Y - MEAN

*fBodyAcc-mean-Z - MEAN

*fBodyAcc-std-X - MEAN

*fBodyAcc-std-Y - MEAN

*fBodyAcc-std-Z - MEAN

*fBodyAccJerk-mean-X - MEAN

*fBodyAccJerk-mean-Y - MEAN

*fBodyAccJerk-mean-Z - MEAN

*fBodyAccJerk-std-X - MEAN

*fBodyAccJerk-std-Y - MEAN

*fBodyAccJerk-std-Z - MEAN

*fBodyGyro-mean-X - MEAN

*fBodyGyro-mean-Y - MEAN

*fBodyGyro-mean-Z - MEAN

*fBodyGyro-std-X - MEAN

*fBodyGyro-std-Y - MEAN

*fBodyGyro-std-Z - MEAN

*fBodyAccMag-mean - MEAN

*fBodyAccMag-std - MEAN

*fBodyBodyAccJerkMag-mean - MEAN

*fBodyBodyAccJerkMag-std - MEAN

*fBodyBodyGyroMag-mean - MEAN

*fBodyBodyGyroMag-std - MEAN

*fBodyBodyGyroJerkMag-mean - MEAN

*fBodyBodyGyroJerkMag-std - MEAN

