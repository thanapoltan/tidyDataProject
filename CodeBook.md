Code Book
=========

## Input Data

### Source

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit� degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Files

* 'features.txt': List of all variables.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample in Train dataset.

* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample in Test dataset.

### Data

* Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

* Data Set Characteristics:  Multivariate, Time-Series

* Number of Instances: 10299

* Number of Attributes: 561

* Area: Computer

* Date Donated: 2012-12-10

* Associated Tasks: Classification, Clustering

* Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


### Variables

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

Below are the complete list of variables based on the information above:

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tBodyAcc-mad()-X
tBodyAcc-mad()-Y
tBodyAcc-mad()-Z
tBodyAcc-max()-X
tBodyAcc-max()-Y
tBodyAcc-max()-Z
tBodyAcc-min()-X
tBodyAcc-min()-Y
tBodyAcc-min()-Z
tBodyAcc-sma()
tBodyAcc-energy()-X
tBodyAcc-energy()-Y
tBodyAcc-energy()-Z
tBodyAcc-iqr()-X
tBodyAcc-iqr()-Y
tBodyAcc-iqr()-Z
tBodyAcc-entropy()-X
tBodyAcc-entropy()-Y
tBodyAcc-entropy()-Z
tBodyAcc-arCoeff()-X,1
tBodyAcc-arCoeff()-X,2
tBodyAcc-arCoeff()-X,3
tBodyAcc-arCoeff()-X,4
tBodyAcc-arCoeff()-Y,1
tBodyAcc-arCoeff()-Y,2
tBodyAcc-arCoeff()-Y,3
tBodyAcc-arCoeff()-Y,4
tBodyAcc-arCoeff()-Z,1
tBodyAcc-arCoeff()-Z,2
tBodyAcc-arCoeff()-Z,3
tBodyAcc-arCoeff()-Z,4
tBodyAcc-correlation()-X,Y
tBodyAcc-correlation()-X,Z
tBodyAcc-correlation()-Y,Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tGravityAcc-mad()-X
tGravityAcc-mad()-Y
tGravityAcc-mad()-Z
tGravityAcc-max()-X
tGravityAcc-max()-Y
tGravityAcc-max()-Z
tGravityAcc-min()-X
tGravityAcc-min()-Y
tGravityAcc-min()-Z
tGravityAcc-sma()
tGravityAcc-energy()-X
tGravityAcc-energy()-Y
tGravityAcc-energy()-Z
tGravityAcc-iqr()-X
tGravityAcc-iqr()-Y
tGravityAcc-iqr()-Z
tGravityAcc-entropy()-X
tGravityAcc-entropy()-Y
tGravityAcc-entropy()-Z
tGravityAcc-arCoeff()-X,1
tGravityAcc-arCoeff()-X,2
tGravityAcc-arCoeff()-X,3
tGravityAcc-arCoeff()-X,4
tGravityAcc-arCoeff()-Y,1
tGravityAcc-arCoeff()-Y,2
tGravityAcc-arCoeff()-Y,3
tGravityAcc-arCoeff()-Y,4
tGravityAcc-arCoeff()-Z,1
tGravityAcc-arCoeff()-Z,2
tGravityAcc-arCoeff()-Z,3
tGravityAcc-arCoeff()-Z,4
tGravityAcc-correlation()-X,Y
tGravityAcc-correlation()-X,Z
tGravityAcc-correlation()-Y,Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyAccJerk-mad()-X
tBodyAccJerk-mad()-Y
tBodyAccJerk-mad()-Z
tBodyAccJerk-max()-X
tBodyAccJerk-max()-Y
tBodyAccJerk-max()-Z
tBodyAccJerk-min()-X
tBodyAccJerk-min()-Y
tBodyAccJerk-min()-Z
tBodyAccJerk-sma()
tBodyAccJerk-energy()-X
tBodyAccJerk-energy()-Y
tBodyAccJerk-energy()-Z
tBodyAccJerk-iqr()-X
tBodyAccJerk-iqr()-Y
tBodyAccJerk-iqr()-Z
tBodyAccJerk-entropy()-X
tBodyAccJerk-entropy()-Y
tBodyAccJerk-entropy()-Z
tBodyAccJerk-arCoeff()-X,1
tBodyAccJerk-arCoeff()-X,2
tBodyAccJerk-arCoeff()-X,3
tBodyAccJerk-arCoeff()-X,4
tBodyAccJerk-arCoeff()-Y,1
tBodyAccJerk-arCoeff()-Y,2
tBodyAccJerk-arCoeff()-Y,3
tBodyAccJerk-arCoeff()-Y,4
tBodyAccJerk-arCoeff()-Z,1
tBodyAccJerk-arCoeff()-Z,2
tBodyAccJerk-arCoeff()-Z,3
tBodyAccJerk-arCoeff()-Z,4
tBodyAccJerk-correlation()-X,Y
tBodyAccJerk-correlation()-X,Z
tBodyAccJerk-correlation()-Y,Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyro-mad()-X
tBodyGyro-mad()-Y
tBodyGyro-mad()-Z
tBodyGyro-max()-X
tBodyGyro-max()-Y
tBodyGyro-max()-Z
tBodyGyro-min()-X
tBodyGyro-min()-Y
tBodyGyro-min()-Z
tBodyGyro-sma()
tBodyGyro-energy()-X
tBodyGyro-energy()-Y
tBodyGyro-energy()-Z
tBodyGyro-iqr()-X
tBodyGyro-iqr()-Y
tBodyGyro-iqr()-Z
tBodyGyro-entropy()-X
tBodyGyro-entropy()-Y
tBodyGyro-entropy()-Z
tBodyGyro-arCoeff()-X,1
tBodyGyro-arCoeff()-X,2
tBodyGyro-arCoeff()-X,3
tBodyGyro-arCoeff()-X,4
tBodyGyro-arCoeff()-Y,1
tBodyGyro-arCoeff()-Y,2
tBodyGyro-arCoeff()-Y,3
tBodyGyro-arCoeff()-Y,4
tBodyGyro-arCoeff()-Z,1
tBodyGyro-arCoeff()-Z,2
tBodyGyro-arCoeff()-Z,3
tBodyGyro-arCoeff()-Z,4
tBodyGyro-correlation()-X,Y
tBodyGyro-correlation()-X,Z
tBodyGyro-correlation()-Y,Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyGyroJerk-mad()-X
tBodyGyroJerk-mad()-Y
tBodyGyroJerk-mad()-Z
tBodyGyroJerk-max()-X
tBodyGyroJerk-max()-Y
tBodyGyroJerk-max()-Z
tBodyGyroJerk-min()-X
tBodyGyroJerk-min()-Y
tBodyGyroJerk-min()-Z
tBodyGyroJerk-sma()
tBodyGyroJerk-energy()-X
tBodyGyroJerk-energy()-Y
tBodyGyroJerk-energy()-Z
tBodyGyroJerk-iqr()-X
tBodyGyroJerk-iqr()-Y
tBodyGyroJerk-iqr()-Z
tBodyGyroJerk-entropy()-X
tBodyGyroJerk-entropy()-Y
tBodyGyroJerk-entropy()-Z
tBodyGyroJerk-arCoeff()-X,1
tBodyGyroJerk-arCoeff()-X,2
tBodyGyroJerk-arCoeff()-X,3
tBodyGyroJerk-arCoeff()-X,4
tBodyGyroJerk-arCoeff()-Y,1
tBodyGyroJerk-arCoeff()-Y,2
tBodyGyroJerk-arCoeff()-Y,3
tBodyGyroJerk-arCoeff()-Y,4
tBodyGyroJerk-arCoeff()-Z,1
tBodyGyroJerk-arCoeff()-Z,2
tBodyGyroJerk-arCoeff()-Z,3
tBodyGyroJerk-arCoeff()-Z,4
tBodyGyroJerk-correlation()-X,Y
tBodyGyroJerk-correlation()-X,Z
tBodyGyroJerk-correlation()-Y,Z
tBodyAccMag-mean()
tBodyAccMag-std()
tBodyAccMag-mad()
tBodyAccMag-max()
tBodyAccMag-min()
tBodyAccMag-sma()
tBodyAccMag-energy()
tBodyAccMag-iqr()
tBodyAccMag-entropy()
tBodyAccMag-arCoeff()1
tBodyAccMag-arCoeff()2
tBodyAccMag-arCoeff()3
tBodyAccMag-arCoeff()4
tGravityAccMag-mean()
tGravityAccMag-std()
tGravityAccMag-mad()
tGravityAccMag-max()
tGravityAccMag-min()
tGravityAccMag-sma()
tGravityAccMag-energy()
tGravityAccMag-iqr()
tGravityAccMag-entropy()
tGravityAccMag-arCoeff()1
tGravityAccMag-arCoeff()2
tGravityAccMag-arCoeff()3
tGravityAccMag-arCoeff()4
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyAccJerkMag-mad()
tBodyAccJerkMag-max()
tBodyAccJerkMag-min()
tBodyAccJerkMag-sma()
tBodyAccJerkMag-energy()
tBodyAccJerkMag-iqr()
tBodyAccJerkMag-entropy()
tBodyAccJerkMag-arCoeff()1
tBodyAccJerkMag-arCoeff()2
tBodyAccJerkMag-arCoeff()3
tBodyAccJerkMag-arCoeff()4
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroMag-mad()
tBodyGyroMag-max()
tBodyGyroMag-min()
tBodyGyroMag-sma()
tBodyGyroMag-energy()
tBodyGyroMag-iqr()
tBodyGyroMag-entropy()
tBodyGyroMag-arCoeff()1
tBodyGyroMag-arCoeff()2
tBodyGyroMag-arCoeff()3
tBodyGyroMag-arCoeff()4
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
tBodyGyroJerkMag-mad()
tBodyGyroJerkMag-max()
tBodyGyroJerkMag-min()
tBodyGyroJerkMag-sma()
tBodyGyroJerkMag-energy()
tBodyGyroJerkMag-iqr()
tBodyGyroJerkMag-entropy()
tBodyGyroJerkMag-arCoeff()1
tBodyGyroJerkMag-arCoeff()2
tBodyGyroJerkMag-arCoeff()3
tBodyGyroJerkMag-arCoeff()4
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-mad()-X
fBodyAcc-mad()-Y
fBodyAcc-mad()-Z
fBodyAcc-max()-X
fBodyAcc-max()-Y
fBodyAcc-max()-Z
fBodyAcc-min()-X
fBodyAcc-min()-Y
fBodyAcc-min()-Z
fBodyAcc-sma()
fBodyAcc-energy()-X
fBodyAcc-energy()-Y
fBodyAcc-energy()-Z
fBodyAcc-iqr()-X
fBodyAcc-iqr()-Y
fBodyAcc-iqr()-Z
fBodyAcc-entropy()-X
fBodyAcc-entropy()-Y
fBodyAcc-entropy()-Z
fBodyAcc-maxInds-X
fBodyAcc-maxInds-Y
fBodyAcc-maxInds-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAcc-skewness()-X
fBodyAcc-kurtosis()-X
fBodyAcc-skewness()-Y
fBodyAcc-kurtosis()-Y
fBodyAcc-skewness()-Z
fBodyAcc-kurtosis()-Z
fBodyAcc-bandsEnergy()-1,8
fBodyAcc-bandsEnergy()-9,16
fBodyAcc-bandsEnergy()-17,24
fBodyAcc-bandsEnergy()-25,32
fBodyAcc-bandsEnergy()-33,40
fBodyAcc-bandsEnergy()-41,48
fBodyAcc-bandsEnergy()-49,56
fBodyAcc-bandsEnergy()-57,64
fBodyAcc-bandsEnergy()-1,16
fBodyAcc-bandsEnergy()-17,32
fBodyAcc-bandsEnergy()-33,48
fBodyAcc-bandsEnergy()-49,64
fBodyAcc-bandsEnergy()-1,24
fBodyAcc-bandsEnergy()-25,48
fBodyAcc-bandsEnergy()-1,8
fBodyAcc-bandsEnergy()-9,16
fBodyAcc-bandsEnergy()-17,24
fBodyAcc-bandsEnergy()-25,32
fBodyAcc-bandsEnergy()-33,40
fBodyAcc-bandsEnergy()-41,48
fBodyAcc-bandsEnergy()-49,56
fBodyAcc-bandsEnergy()-57,64
fBodyAcc-bandsEnergy()-1,16
fBodyAcc-bandsEnergy()-17,32
fBodyAcc-bandsEnergy()-33,48
fBodyAcc-bandsEnergy()-49,64
fBodyAcc-bandsEnergy()-1,24
fBodyAcc-bandsEnergy()-25,48
fBodyAcc-bandsEnergy()-1,8
fBodyAcc-bandsEnergy()-9,16
fBodyAcc-bandsEnergy()-17,24
fBodyAcc-bandsEnergy()-25,32
fBodyAcc-bandsEnergy()-33,40
fBodyAcc-bandsEnergy()-41,48
fBodyAcc-bandsEnergy()-49,56
fBodyAcc-bandsEnergy()-57,64
fBodyAcc-bandsEnergy()-1,16
fBodyAcc-bandsEnergy()-17,32
fBodyAcc-bandsEnergy()-33,48
fBodyAcc-bandsEnergy()-49,64
fBodyAcc-bandsEnergy()-1,24
fBodyAcc-bandsEnergy()-25,48
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-mad()-X
fBodyAccJerk-mad()-Y
fBodyAccJerk-mad()-Z
fBodyAccJerk-max()-X
fBodyAccJerk-max()-Y
fBodyAccJerk-max()-Z
fBodyAccJerk-min()-X
fBodyAccJerk-min()-Y
fBodyAccJerk-min()-Z
fBodyAccJerk-sma()
fBodyAccJerk-energy()-X
fBodyAccJerk-energy()-Y
fBodyAccJerk-energy()-Z
fBodyAccJerk-iqr()-X
fBodyAccJerk-iqr()-Y
fBodyAccJerk-iqr()-Z
fBodyAccJerk-entropy()-X
fBodyAccJerk-entropy()-Y
fBodyAccJerk-entropy()-Z
fBodyAccJerk-maxInds-X
fBodyAccJerk-maxInds-Y
fBodyAccJerk-maxInds-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyAccJerk-skewness()-X
fBodyAccJerk-kurtosis()-X
fBodyAccJerk-skewness()-Y
fBodyAccJerk-kurtosis()-Y
fBodyAccJerk-skewness()-Z
fBodyAccJerk-kurtosis()-Z
fBodyAccJerk-bandsEnergy()-1,8
fBodyAccJerk-bandsEnergy()-9,16
fBodyAccJerk-bandsEnergy()-17,24
fBodyAccJerk-bandsEnergy()-25,32
fBodyAccJerk-bandsEnergy()-33,40
fBodyAccJerk-bandsEnergy()-41,48
fBodyAccJerk-bandsEnergy()-49,56
fBodyAccJerk-bandsEnergy()-57,64
fBodyAccJerk-bandsEnergy()-1,16
fBodyAccJerk-bandsEnergy()-17,32
fBodyAccJerk-bandsEnergy()-33,48
fBodyAccJerk-bandsEnergy()-49,64
fBodyAccJerk-bandsEnergy()-1,24
fBodyAccJerk-bandsEnergy()-25,48
fBodyAccJerk-bandsEnergy()-1,8
fBodyAccJerk-bandsEnergy()-9,16
fBodyAccJerk-bandsEnergy()-17,24
fBodyAccJerk-bandsEnergy()-25,32
fBodyAccJerk-bandsEnergy()-33,40
fBodyAccJerk-bandsEnergy()-41,48
fBodyAccJerk-bandsEnergy()-49,56
fBodyAccJerk-bandsEnergy()-57,64
fBodyAccJerk-bandsEnergy()-1,16
fBodyAccJerk-bandsEnergy()-17,32
fBodyAccJerk-bandsEnergy()-33,48
fBodyAccJerk-bandsEnergy()-49,64
fBodyAccJerk-bandsEnergy()-1,24
fBodyAccJerk-bandsEnergy()-25,48
fBodyAccJerk-bandsEnergy()-1,8
fBodyAccJerk-bandsEnergy()-9,16
fBodyAccJerk-bandsEnergy()-17,24
fBodyAccJerk-bandsEnergy()-25,32
fBodyAccJerk-bandsEnergy()-33,40
fBodyAccJerk-bandsEnergy()-41,48
fBodyAccJerk-bandsEnergy()-49,56
fBodyAccJerk-bandsEnergy()-57,64
fBodyAccJerk-bandsEnergy()-1,16
fBodyAccJerk-bandsEnergy()-17,32
fBodyAccJerk-bandsEnergy()-33,48
fBodyAccJerk-bandsEnergy()-49,64
fBodyAccJerk-bandsEnergy()-1,24
fBodyAccJerk-bandsEnergy()-25,48
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-mad()-X
fBodyGyro-mad()-Y
fBodyGyro-mad()-Z
fBodyGyro-max()-X
fBodyGyro-max()-Y
fBodyGyro-max()-Z
fBodyGyro-min()-X
fBodyGyro-min()-Y
fBodyGyro-min()-Z
fBodyGyro-sma()
fBodyGyro-energy()-X
fBodyGyro-energy()-Y
fBodyGyro-energy()-Z
fBodyGyro-iqr()-X
fBodyGyro-iqr()-Y
fBodyGyro-iqr()-Z
fBodyGyro-entropy()-X
fBodyGyro-entropy()-Y
fBodyGyro-entropy()-Z
fBodyGyro-maxInds-X
fBodyGyro-maxInds-Y
fBodyGyro-maxInds-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyGyro-skewness()-X
fBodyGyro-kurtosis()-X
fBodyGyro-skewness()-Y
fBodyGyro-kurtosis()-Y
fBodyGyro-skewness()-Z
fBodyGyro-kurtosis()-Z
fBodyGyro-bandsEnergy()-1,8
fBodyGyro-bandsEnergy()-9,16
fBodyGyro-bandsEnergy()-17,24
fBodyGyro-bandsEnergy()-25,32
fBodyGyro-bandsEnergy()-33,40
fBodyGyro-bandsEnergy()-41,48
fBodyGyro-bandsEnergy()-49,56
fBodyGyro-bandsEnergy()-57,64
fBodyGyro-bandsEnergy()-1,16
fBodyGyro-bandsEnergy()-17,32
fBodyGyro-bandsEnergy()-33,48
fBodyGyro-bandsEnergy()-49,64
fBodyGyro-bandsEnergy()-1,24
fBodyGyro-bandsEnergy()-25,48
fBodyGyro-bandsEnergy()-1,8
fBodyGyro-bandsEnergy()-9,16
fBodyGyro-bandsEnergy()-17,24
fBodyGyro-bandsEnergy()-25,32
fBodyGyro-bandsEnergy()-33,40
fBodyGyro-bandsEnergy()-41,48
fBodyGyro-bandsEnergy()-49,56
fBodyGyro-bandsEnergy()-57,64
fBodyGyro-bandsEnergy()-1,16
fBodyGyro-bandsEnergy()-17,32
fBodyGyro-bandsEnergy()-33,48
fBodyGyro-bandsEnergy()-49,64
fBodyGyro-bandsEnergy()-1,24
fBodyGyro-bandsEnergy()-25,48
fBodyGyro-bandsEnergy()-1,8
fBodyGyro-bandsEnergy()-9,16
fBodyGyro-bandsEnergy()-17,24
fBodyGyro-bandsEnergy()-25,32
fBodyGyro-bandsEnergy()-33,40
fBodyGyro-bandsEnergy()-41,48
fBodyGyro-bandsEnergy()-49,56
fBodyGyro-bandsEnergy()-57,64
fBodyGyro-bandsEnergy()-1,16
fBodyGyro-bandsEnergy()-17,32
fBodyGyro-bandsEnergy()-33,48
fBodyGyro-bandsEnergy()-49,64
fBodyGyro-bandsEnergy()-1,24
fBodyGyro-bandsEnergy()-25,48
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-mad()
fBodyAccMag-max()
fBodyAccMag-min()
fBodyAccMag-sma()
fBodyAccMag-energy()
fBodyAccMag-iqr()
fBodyAccMag-entropy()
fBodyAccMag-maxInds
fBodyAccMag-meanFreq()
fBodyAccMag-skewness()
fBodyAccMag-kurtosis()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-mad()
fBodyBodyAccJerkMag-max()
fBodyBodyAccJerkMag-min()
fBodyBodyAccJerkMag-sma()
fBodyBodyAccJerkMag-energy()
fBodyBodyAccJerkMag-iqr()
fBodyBodyAccJerkMag-entropy()
fBodyBodyAccJerkMag-maxInds
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyAccJerkMag-skewness()
fBodyBodyAccJerkMag-kurtosis()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-mad()
fBodyBodyGyroMag-max()
fBodyBodyGyroMag-min()
fBodyBodyGyroMag-sma()
fBodyBodyGyroMag-energy()
fBodyBodyGyroMag-iqr()
fBodyBodyGyroMag-entropy()
fBodyBodyGyroMag-maxInds
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroMag-skewness()
fBodyBodyGyroMag-kurtosis()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-mad()
fBodyBodyGyroJerkMag-max()
fBodyBodyGyroJerkMag-min()
fBodyBodyGyroJerkMag-sma()
fBodyBodyGyroJerkMag-energy()
fBodyBodyGyroJerkMag-iqr()
fBodyBodyGyroJerkMag-entropy()
fBodyBodyGyroJerkMag-maxInds
fBodyBodyGyroJerkMag-meanFreq()
fBodyBodyGyroJerkMag-skewness()
fBodyBodyGyroJerkMag-kurtosis()
angle(tBodyAccMean,gravity)
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean)

## Tidy Data

### Data Processing

In order to get the tidy data set, these processes are done to the input.

1. Combine train and test pair data sets for Subjects, Activities, and Feature Data.
2. Recode activity numbers into descriptive activity names
3. Assign Feature labels as the column names of data sets for the Feature Data.
4. Assign appropriate the column names of data sets for Subjects and Activities Data.
5. Extract the columns based on column names which contain mean() and std() elements from Feature Data. 
6. Rename columns names into appropriately labels for Subjects, Activities, and Feature Data.
7. Combine Subjects, Activities, and Feature Data part together
8. Reshape the combined data into new independent tidy data set with the average of each variable for each activity and each subject.
9. Rename columns names of tidy dataset as they reflects average values for each activity and each subject.
10. Export the tidy data set into a tab delimited text file in working directory.

### Variables & Summary

The variables in the tidy data set are summarized into the average of each input variable that involve with estimation mean() and std() of the measurements for each activity name and each subject.

Below are the complete list of variables based on the information above:

subject
	* the subject who performed the activity (30 volunteers).
activity.names
	* six activities performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
average.tBodyAcc.mean.X
average.tBodyAcc.mean.Y
average.tBodyAcc.mean.Z
average.tGravityAcc.mean.X
average.tGravityAcc.mean.Y
average.tGravityAcc.mean.Z
average.tBodyAccJerk.mean.X
average.tBodyAccJerk.mean.Y
average.tBodyAccJerk.mean.Z
average.tBodyGyro.mean.X
average.tBodyGyro.mean.Y
average.tBodyGyro.mean.Z
average.tBodyGyroJerk.mean.X
average.tBodyGyroJerk.mean.Y
average.tBodyGyroJerk.mean.Z
average.tBodyAccMag.mean
average.tGravityAccMag.mean
average.tBodyAccJerkMag.mean
average.tBodyGyroMag.mean
average.tBodyGyroJerkMag.mean
average.fBodyAcc.mean.X
average.fBodyAcc.mean.Y
average.fBodyAcc.mean.Z
average.fBodyAccJerk.mean.X
average.fBodyAccJerk.mean.Y
average.fBodyAccJerk.mean.Z
average.fBodyGyro.mean.X
average.fBodyGyro.mean.Y
average.fBodyGyro.mean.Z
average.fBodyAccMag.mean
average.fBodyBodyAccJerkMag.mean
average.fBodyBodyGyroMag.mean
average.fBodyBodyGyroJerkMag.mean
average.tBodyAcc.std.X
average.tBodyAcc.std.Y
average.tBodyAcc.std.Z
average.tGravityAcc.std.X
average.tGravityAcc.std.Y
average.tGravityAcc.std.Z
average.tBodyAccJerk.std.X
average.tBodyAccJerk.std.Y
average.tBodyAccJerk.std.Z
average.tBodyGyro.std.X
average.tBodyGyro.std.Y
average.tBodyGyro.std.Z
average.tBodyGyroJerk.std.X
average.tBodyGyroJerk.std.Y
average.tBodyGyroJerk.std.Z
average.tBodyAccMag.std
average.tGravityAccMag.std
average.tBodyAccJerkMag.std
average.tBodyGyroMag.std
average.tBodyGyroJerkMag.std
average.fBodyAcc.std.X
average.fBodyAcc.std.Y
average.fBodyAcc.std.Z
average.fBodyAccJerk.std.X
average.fBodyAccJerk.std.Y
average.fBodyAccJerk.std.Z
average.fBodyGyro.std.X
average.fBodyGyro.std.Y
average.fBodyGyro.std.Z
average.fBodyAccMag.std
average.fBodyBodyAccJerkMag.std
average.fBodyBodyGyroMag.std
average.fBodyBodyGyroJerkMag.std