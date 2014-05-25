Code Book
=========

## Input Data

### Source

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
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

tBodyAcc-XYZ<br/>
tGravityAcc-XYZ<br/>
tBodyAccJerk-XYZ<br/>
tBodyGyro-XYZ<br/>
tBodyGyroJerk-XYZ<br/>
tBodyAccMag<br/>
tGravityAccMag<br/>
tBodyAccJerkMag<br/>
tBodyGyroMag<br/>
tBodyGyroJerkMag<br/>
fBodyAcc-XYZ<br/>
fBodyAccJerk-XYZ<br/>
fBodyGyro-XYZ<br/>
fBodyAccMag<br/>
fBodyAccJerkMag<br/>
fBodyGyroMag<br/>
fBodyGyroJerkMag<br/>

The set of variables that were estimated from these signals are: 

mean(): Mean value<br/>
std(): Standard deviation<br/>
mad(): Median absolute deviation <br/>
max(): Largest value in array<br/>
min(): Smallest value in array<br/>
sma(): Signal magnitude area<br/>
energy(): Energy measure. Sum of the squares divided by the number of values. <br/>
iqr(): Interquartile range <br/>
entropy(): Signal entropy<br/>
arCoeff(): Autorregresion coefficients with Burg order equal to 4<br/>
correlation(): correlation coefficient between two signals<br/>
maxInds(): index of the frequency component with largest magnitude<br/>
meanFreq(): Weighted average of the frequency components to obtain a mean frequency<br/>
skewness(): skewness of the frequency domain signal <br/>
kurtosis(): kurtosis of the frequency domain signal <br/>
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.<br/>
angle(): Angle between to vectors.<br/>

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean<br/>
tBodyAccMean<br/>
tBodyAccJerkMean<br/>
tBodyGyroMean<br/>
tBodyGyroJerkMean<br/>

Below are the complete list of variables based on the information above:

tBodyAcc-mean()-X<br/>
tBodyAcc-mean()-Y<br/>
tBodyAcc-mean()-Z<br/>
tBodyAcc-std()-X<br/>
tBodyAcc-std()-Y<br/>
tBodyAcc-std()-Z<br/>
tBodyAcc-mad()-X<br/>
tBodyAcc-mad()-Y<br/>
tBodyAcc-mad()-Z<br/>
tBodyAcc-max()-X<br/>
tBodyAcc-max()-Y<br/>
tBodyAcc-max()-Z<br/>
tBodyAcc-min()-X<br/>
tBodyAcc-min()-Y<br/>
tBodyAcc-min()-Z<br/>
tBodyAcc-sma()<br/>
tBodyAcc-energy()-X<br/>
tBodyAcc-energy()-Y<br/>
tBodyAcc-energy()-Z<br/>
tBodyAcc-iqr()-X<br/>
tBodyAcc-iqr()-Y<br/>
tBodyAcc-iqr()-Z<br/>
tBodyAcc-entropy()-X<br/>
tBodyAcc-entropy()-Y<br/>
tBodyAcc-entropy()-Z<br/>
tBodyAcc-arCoeff()-X,1<br/>
tBodyAcc-arCoeff()-X,2<br/>
tBodyAcc-arCoeff()-X,3<br/>
tBodyAcc-arCoeff()-X,4<br/>
tBodyAcc-arCoeff()-Y,1<br/>
tBodyAcc-arCoeff()-Y,2<br/>
tBodyAcc-arCoeff()-Y,3<br/>
tBodyAcc-arCoeff()-Y,4<br/>
tBodyAcc-arCoeff()-Z,1<br/>
tBodyAcc-arCoeff()-Z,2<br/>
tBodyAcc-arCoeff()-Z,3<br/>
tBodyAcc-arCoeff()-Z,4<br/>
tBodyAcc-correlation()-X,Y<br/>
tBodyAcc-correlation()-X,Z<br/>
tBodyAcc-correlation()-Y,Z<br/>
tGravityAcc-mean()-X<br/>
tGravityAcc-mean()-Y<br/>
tGravityAcc-mean()-Z<br/>
tGravityAcc-std()-X<br/>
tGravityAcc-std()-Y<br/>
tGravityAcc-std()-Z<br/>
tGravityAcc-mad()-X<br/>
tGravityAcc-mad()-Y<br/>
tGravityAcc-mad()-Z<br/>
tGravityAcc-max()-X<br/>
tGravityAcc-max()-Y<br/>
tGravityAcc-max()-Z<br/>
tGravityAcc-min()-X<br/>
tGravityAcc-min()-Y<br/>
tGravityAcc-min()-Z<br/>
tGravityAcc-sma()<br/>
tGravityAcc-energy()-X<br/>
tGravityAcc-energy()-Y<br/>
tGravityAcc-energy()-Z<br/>
tGravityAcc-iqr()-X<br/>
tGravityAcc-iqr()-Y<br/>
tGravityAcc-iqr()-Z<br/>
tGravityAcc-entropy()-X<br/>
tGravityAcc-entropy()-Y<br/>
tGravityAcc-entropy()-Z<br/>
tGravityAcc-arCoeff()-X,1<br/>
tGravityAcc-arCoeff()-X,2<br/>
tGravityAcc-arCoeff()-X,3<br/>
tGravityAcc-arCoeff()-X,4<br/>
tGravityAcc-arCoeff()-Y,1<br/>
tGravityAcc-arCoeff()-Y,2<br/>
tGravityAcc-arCoeff()-Y,3<br/>
tGravityAcc-arCoeff()-Y,4<br/>
tGravityAcc-arCoeff()-Z,1<br/>
tGravityAcc-arCoeff()-Z,2<br/>
tGravityAcc-arCoeff()-Z,3<br/>
tGravityAcc-arCoeff()-Z,4<br/>
tGravityAcc-correlation()-X,Y<br/>
tGravityAcc-correlation()-X,Z<br/>
tGravityAcc-correlation()-Y,Z<br/>
tBodyAccJerk-mean()-X<br/>
tBodyAccJerk-mean()-Y<br/>
tBodyAccJerk-mean()-Z<br/>
tBodyAccJerk-std()-X<br/>
tBodyAccJerk-std()-Y<br/>
tBodyAccJerk-std()-Z<br/>
tBodyAccJerk-mad()-X<br/>
tBodyAccJerk-mad()-Y<br/>
tBodyAccJerk-mad()-Z<br/>
tBodyAccJerk-max()-X<br/>
tBodyAccJerk-max()-Y<br/>
tBodyAccJerk-max()-Z<br/>
tBodyAccJerk-min()-X<br/>
tBodyAccJerk-min()-Y<br/>
tBodyAccJerk-min()-Z<br/>
tBodyAccJerk-sma()<br/>
tBodyAccJerk-energy()-X<br/>
tBodyAccJerk-energy()-Y<br/>
tBodyAccJerk-energy()-Z<br/>
tBodyAccJerk-iqr()-X<br/>
tBodyAccJerk-iqr()-Y<br/>
tBodyAccJerk-iqr()-Z<br/>
tBodyAccJerk-entropy()-X<br/>
tBodyAccJerk-entropy()-Y<br/>
tBodyAccJerk-entropy()-Z<br/>
tBodyAccJerk-arCoeff()-X,1<br/>
tBodyAccJerk-arCoeff()-X,2<br/>
tBodyAccJerk-arCoeff()-X,3<br/>
tBodyAccJerk-arCoeff()-X,4<br/>
tBodyAccJerk-arCoeff()-Y,1<br/>
tBodyAccJerk-arCoeff()-Y,2<br/>
tBodyAccJerk-arCoeff()-Y,3<br/>
tBodyAccJerk-arCoeff()-Y,4<br/>
tBodyAccJerk-arCoeff()-Z,1<br/>
tBodyAccJerk-arCoeff()-Z,2<br/>
tBodyAccJerk-arCoeff()-Z,3<br/>
tBodyAccJerk-arCoeff()-Z,4<br/>
tBodyAccJerk-correlation()-X,Y<br/>
tBodyAccJerk-correlation()-X,Z<br/>
tBodyAccJerk-correlation()-Y,Z<br/>
tBodyGyro-mean()-X<br/>
tBodyGyro-mean()-Y<br/>
tBodyGyro-mean()-Z<br/>
tBodyGyro-std()-X<br/>
tBodyGyro-std()-Y<br/>
tBodyGyro-std()-Z<br/>
tBodyGyro-mad()-X<br/>
tBodyGyro-mad()-Y<br/>
tBodyGyro-mad()-Z<br/>
tBodyGyro-max()-X<br/>
tBodyGyro-max()-Y<br/>
tBodyGyro-max()-Z<br/>
tBodyGyro-min()-X<br/>
tBodyGyro-min()-Y<br/>
tBodyGyro-min()-Z<br/>
tBodyGyro-sma()<br/>
tBodyGyro-energy()-X<br/>
tBodyGyro-energy()-Y<br/>
tBodyGyro-energy()-Z<br/>
tBodyGyro-iqr()-X<br/>
tBodyGyro-iqr()-Y<br/>
tBodyGyro-iqr()-Z<br/>
tBodyGyro-entropy()-X<br/>
tBodyGyro-entropy()-Y<br/>
tBodyGyro-entropy()-Z<br/>
tBodyGyro-arCoeff()-X,1<br/>
tBodyGyro-arCoeff()-X,2<br/>
tBodyGyro-arCoeff()-X,3<br/>
tBodyGyro-arCoeff()-X,4<br/>
tBodyGyro-arCoeff()-Y,1<br/>
tBodyGyro-arCoeff()-Y,2<br/>
tBodyGyro-arCoeff()-Y,3<br/>
tBodyGyro-arCoeff()-Y,4<br/>
tBodyGyro-arCoeff()-Z,1<br/>
tBodyGyro-arCoeff()-Z,2<br/>
tBodyGyro-arCoeff()-Z,3<br/>
tBodyGyro-arCoeff()-Z,4<br/>
tBodyGyro-correlation()-X,Y<br/>
tBodyGyro-correlation()-X,Z<br/>
tBodyGyro-correlation()-Y,Z<br/>
tBodyGyroJerk-mean()-X<br/>
tBodyGyroJerk-mean()-Y<br/>
tBodyGyroJerk-mean()-Z<br/>
tBodyGyroJerk-std()-X<br/>
tBodyGyroJerk-std()-Y<br/>
tBodyGyroJerk-std()-Z<br/>
tBodyGyroJerk-mad()-X<br/>
tBodyGyroJerk-mad()-Y<br/>
tBodyGyroJerk-mad()-Z<br/>
tBodyGyroJerk-max()-X<br/>
tBodyGyroJerk-max()-Y<br/>
tBodyGyroJerk-max()-Z<br/>
tBodyGyroJerk-min()-X<br/>
tBodyGyroJerk-min()-Y<br/>
tBodyGyroJerk-min()-Z<br/>
tBodyGyroJerk-sma()<br/>
tBodyGyroJerk-energy()-X<br/>
tBodyGyroJerk-energy()-Y<br/>
tBodyGyroJerk-energy()-Z<br/>
tBodyGyroJerk-iqr()-X<br/>
tBodyGyroJerk-iqr()-Y<br/>
tBodyGyroJerk-iqr()-Z<br/>
tBodyGyroJerk-entropy()-X<br/>
tBodyGyroJerk-entropy()-Y<br/>
tBodyGyroJerk-entropy()-Z<br/>
tBodyGyroJerk-arCoeff()-X,1<br/>
tBodyGyroJerk-arCoeff()-X,2<br/>
tBodyGyroJerk-arCoeff()-X,3<br/>
tBodyGyroJerk-arCoeff()-X,4<br/>
tBodyGyroJerk-arCoeff()-Y,1<br/>
tBodyGyroJerk-arCoeff()-Y,2<br/>
tBodyGyroJerk-arCoeff()-Y,3<br/>
tBodyGyroJerk-arCoeff()-Y,4<br/>
tBodyGyroJerk-arCoeff()-Z,1<br/>
tBodyGyroJerk-arCoeff()-Z,2<br/>
tBodyGyroJerk-arCoeff()-Z,3<br/>
tBodyGyroJerk-arCoeff()-Z,4<br/>
tBodyGyroJerk-correlation()-X,Y<br/>
tBodyGyroJerk-correlation()-X,Z<br/>
tBodyGyroJerk-correlation()-Y,Z<br/>
tBodyAccMag-mean()<br/>
tBodyAccMag-std()<br/>
tBodyAccMag-mad()<br/>
tBodyAccMag-max()<br/>
tBodyAccMag-min()<br/>
tBodyAccMag-sma()<br/>
tBodyAccMag-energy()<br/>
tBodyAccMag-iqr()<br/>
tBodyAccMag-entropy()<br/>
tBodyAccMag-arCoeff()1<br/>
tBodyAccMag-arCoeff()2<br/>
tBodyAccMag-arCoeff()3<br/>
tBodyAccMag-arCoeff()4<br/>
tGravityAccMag-mean()<br/>
tGravityAccMag-std()<br/>
tGravityAccMag-mad()<br/>
tGravityAccMag-max()<br/>
tGravityAccMag-min()<br/>
tGravityAccMag-sma()<br/>
tGravityAccMag-energy()<br/>
tGravityAccMag-iqr()<br/>
tGravityAccMag-entropy()<br/>
tGravityAccMag-arCoeff()1<br/>
tGravityAccMag-arCoeff()2<br/>
tGravityAccMag-arCoeff()3<br/>
tGravityAccMag-arCoeff()4<br/>
tBodyAccJerkMag-mean()<br/>
tBodyAccJerkMag-std()<br/>
tBodyAccJerkMag-mad()<br/>
tBodyAccJerkMag-max()<br/>
tBodyAccJerkMag-min()<br/>
tBodyAccJerkMag-sma()<br/>
tBodyAccJerkMag-energy()<br/>
tBodyAccJerkMag-iqr()<br/>
tBodyAccJerkMag-entropy()<br/>
tBodyAccJerkMag-arCoeff()1<br/>
tBodyAccJerkMag-arCoeff()2<br/>
tBodyAccJerkMag-arCoeff()3<br/>
tBodyAccJerkMag-arCoeff()4<br/>
tBodyGyroMag-mean()<br/>
tBodyGyroMag-std()<br/>
tBodyGyroMag-mad()<br/>
tBodyGyroMag-max()<br/>
tBodyGyroMag-min()<br/>
tBodyGyroMag-sma()<br/>
tBodyGyroMag-energy()<br/>
tBodyGyroMag-iqr()<br/>
tBodyGyroMag-entropy()<br/>
tBodyGyroMag-arCoeff()1<br/>
tBodyGyroMag-arCoeff()2<br/>
tBodyGyroMag-arCoeff()3<br/>
tBodyGyroMag-arCoeff()4<br/>
tBodyGyroJerkMag-mean()<br/>
tBodyGyroJerkMag-std()<br/>
tBodyGyroJerkMag-mad()<br/>
tBodyGyroJerkMag-max()<br/>
tBodyGyroJerkMag-min()<br/>
tBodyGyroJerkMag-sma()<br/>
tBodyGyroJerkMag-energy()<br/>
tBodyGyroJerkMag-iqr()<br/>
tBodyGyroJerkMag-entropy()<br/>
tBodyGyroJerkMag-arCoeff()1<br/>
tBodyGyroJerkMag-arCoeff()2<br/>
tBodyGyroJerkMag-arCoeff()3<br/>
tBodyGyroJerkMag-arCoeff()4<br/>
fBodyAcc-mean()-X<br/>
fBodyAcc-mean()-Y<br/>
fBodyAcc-mean()-Z<br/>
fBodyAcc-std()-X<br/>
fBodyAcc-std()-Y<br/>
fBodyAcc-std()-Z<br/>
fBodyAcc-mad()-X<br/>
fBodyAcc-mad()-Y<br/>
fBodyAcc-mad()-Z<br/>
fBodyAcc-max()-X<br/>
fBodyAcc-max()-Y<br/>
fBodyAcc-max()-Z<br/>
fBodyAcc-min()-X<br/>
fBodyAcc-min()-Y<br/>
fBodyAcc-min()-Z<br/>
fBodyAcc-sma()<br/>
fBodyAcc-energy()-X<br/>
fBodyAcc-energy()-Y<br/>
fBodyAcc-energy()-Z<br/>
fBodyAcc-iqr()-X<br/>
fBodyAcc-iqr()-Y<br/>
fBodyAcc-iqr()-Z<br/>
fBodyAcc-entropy()-X<br/>
fBodyAcc-entropy()-Y<br/>
fBodyAcc-entropy()-Z<br/>
fBodyAcc-maxInds-X<br/>
fBodyAcc-maxInds-Y<br/>
fBodyAcc-maxInds-Z<br/>
fBodyAcc-meanFreq()-X<br/>
fBodyAcc-meanFreq()-Y<br/>
fBodyAcc-meanFreq()-Z<br/>
fBodyAcc-skewness()-X<br/>
fBodyAcc-kurtosis()-X<br/>
fBodyAcc-skewness()-Y<br/>
fBodyAcc-kurtosis()-Y<br/>
fBodyAcc-skewness()-Z<br/>
fBodyAcc-kurtosis()-Z<br/>
fBodyAcc-bandsEnergy()-1,8<br/>
fBodyAcc-bandsEnergy()-9,16<br/>
fBodyAcc-bandsEnergy()-17,24<br/>
fBodyAcc-bandsEnergy()-25,32<br/>
fBodyAcc-bandsEnergy()-33,40<br/>
fBodyAcc-bandsEnergy()-41,48<br/>
fBodyAcc-bandsEnergy()-49,56<br/>
fBodyAcc-bandsEnergy()-57,64<br/>
fBodyAcc-bandsEnergy()-1,16<br/>
fBodyAcc-bandsEnergy()-17,32<br/>
fBodyAcc-bandsEnergy()-33,48<br/>
fBodyAcc-bandsEnergy()-49,64<br/>
fBodyAcc-bandsEnergy()-1,24<br/>
fBodyAcc-bandsEnergy()-25,48<br/>
fBodyAcc-bandsEnergy()-1,8<br/>
fBodyAcc-bandsEnergy()-9,16<br/>
fBodyAcc-bandsEnergy()-17,24<br/>
fBodyAcc-bandsEnergy()-25,32<br/>
fBodyAcc-bandsEnergy()-33,40<br/>
fBodyAcc-bandsEnergy()-41,48<br/>
fBodyAcc-bandsEnergy()-49,56<br/>
fBodyAcc-bandsEnergy()-57,64<br/>
fBodyAcc-bandsEnergy()-1,16<br/>
fBodyAcc-bandsEnergy()-17,32<br/>
fBodyAcc-bandsEnergy()-33,48<br/>
fBodyAcc-bandsEnergy()-49,64<br/>
fBodyAcc-bandsEnergy()-1,24<br/>
fBodyAcc-bandsEnergy()-25,48<br/>
fBodyAcc-bandsEnergy()-1,8<br/>
fBodyAcc-bandsEnergy()-9,16<br/>
fBodyAcc-bandsEnergy()-17,24<br/>
fBodyAcc-bandsEnergy()-25,32<br/>
fBodyAcc-bandsEnergy()-33,40<br/>
fBodyAcc-bandsEnergy()-41,48<br/>
fBodyAcc-bandsEnergy()-49,56<br/>
fBodyAcc-bandsEnergy()-57,64<br/>
fBodyAcc-bandsEnergy()-1,16<br/>
fBodyAcc-bandsEnergy()-17,32<br/>
fBodyAcc-bandsEnergy()-33,48<br/>
fBodyAcc-bandsEnergy()-49,64<br/>
fBodyAcc-bandsEnergy()-1,24<br/>
fBodyAcc-bandsEnergy()-25,48<br/>
fBodyAccJerk-mean()-X<br/>
fBodyAccJerk-mean()-Y<br/>
fBodyAccJerk-mean()-Z<br/>
fBodyAccJerk-std()-X<br/>
fBodyAccJerk-std()-Y<br/>
fBodyAccJerk-std()-Z<br/>
fBodyAccJerk-mad()-X<br/>
fBodyAccJerk-mad()-Y<br/>
fBodyAccJerk-mad()-Z<br/>
fBodyAccJerk-max()-X<br/>
fBodyAccJerk-max()-Y<br/>
fBodyAccJerk-max()-Z<br/>
fBodyAccJerk-min()-X<br/>
fBodyAccJerk-min()-Y<br/>
fBodyAccJerk-min()-Z<br/>
fBodyAccJerk-sma()<br/>
fBodyAccJerk-energy()-X<br/>
fBodyAccJerk-energy()-Y<br/>
fBodyAccJerk-energy()-Z<br/>
fBodyAccJerk-iqr()-X<br/>
fBodyAccJerk-iqr()-Y<br/>
fBodyAccJerk-iqr()-Z<br/>
fBodyAccJerk-entropy()-X<br/>
fBodyAccJerk-entropy()-Y<br/>
fBodyAccJerk-entropy()-Z<br/>
fBodyAccJerk-maxInds-X<br/>
fBodyAccJerk-maxInds-Y<br/>
fBodyAccJerk-maxInds-Z<br/>
fBodyAccJerk-meanFreq()-X<br/>
fBodyAccJerk-meanFreq()-Y<br/>
fBodyAccJerk-meanFreq()-Z<br/>
fBodyAccJerk-skewness()-X<br/>
fBodyAccJerk-kurtosis()-X<br/>
fBodyAccJerk-skewness()-Y<br/>
fBodyAccJerk-kurtosis()-Y<br/>
fBodyAccJerk-skewness()-Z<br/>
fBodyAccJerk-kurtosis()-Z<br/>
fBodyAccJerk-bandsEnergy()-1,8<br/>
fBodyAccJerk-bandsEnergy()-9,16<br/>
fBodyAccJerk-bandsEnergy()-17,24<br/>
fBodyAccJerk-bandsEnergy()-25,32<br/>
fBodyAccJerk-bandsEnergy()-33,40<br/>
fBodyAccJerk-bandsEnergy()-41,48<br/>
fBodyAccJerk-bandsEnergy()-49,56<br/>
fBodyAccJerk-bandsEnergy()-57,64<br/>
fBodyAccJerk-bandsEnergy()-1,16<br/>
fBodyAccJerk-bandsEnergy()-17,32<br/>
fBodyAccJerk-bandsEnergy()-33,48<br/>
fBodyAccJerk-bandsEnergy()-49,64<br/>
fBodyAccJerk-bandsEnergy()-1,24<br/>
fBodyAccJerk-bandsEnergy()-25,48<br/>
fBodyAccJerk-bandsEnergy()-1,8<br/>
fBodyAccJerk-bandsEnergy()-9,16<br/>
fBodyAccJerk-bandsEnergy()-17,24<br/>
fBodyAccJerk-bandsEnergy()-25,32<br/>
fBodyAccJerk-bandsEnergy()-33,40<br/>
fBodyAccJerk-bandsEnergy()-41,48<br/>
fBodyAccJerk-bandsEnergy()-49,56<br/>
fBodyAccJerk-bandsEnergy()-57,64<br/>
fBodyAccJerk-bandsEnergy()-1,16<br/>
fBodyAccJerk-bandsEnergy()-17,32<br/>
fBodyAccJerk-bandsEnergy()-33,48<br/>
fBodyAccJerk-bandsEnergy()-49,64<br/>
fBodyAccJerk-bandsEnergy()-1,24<br/>
fBodyAccJerk-bandsEnergy()-25,48<br/>
fBodyAccJerk-bandsEnergy()-1,8<br/>
fBodyAccJerk-bandsEnergy()-9,16<br/>
fBodyAccJerk-bandsEnergy()-17,24<br/>
fBodyAccJerk-bandsEnergy()-25,32<br/>
fBodyAccJerk-bandsEnergy()-33,40<br/>
fBodyAccJerk-bandsEnergy()-41,48<br/>
fBodyAccJerk-bandsEnergy()-49,56<br/>
fBodyAccJerk-bandsEnergy()-57,64<br/>
fBodyAccJerk-bandsEnergy()-1,16<br/>
fBodyAccJerk-bandsEnergy()-17,32<br/>
fBodyAccJerk-bandsEnergy()-33,48<br/>
fBodyAccJerk-bandsEnergy()-49,64<br/>
fBodyAccJerk-bandsEnergy()-1,24<br/>
fBodyAccJerk-bandsEnergy()-25,48<br/>
fBodyGyro-mean()-X<br/>
fBodyGyro-mean()-Y<br/>
fBodyGyro-mean()-Z<br/>
fBodyGyro-std()-X<br/>
fBodyGyro-std()-Y<br/>
fBodyGyro-std()-Z<br/>
fBodyGyro-mad()-X<br/>
fBodyGyro-mad()-Y<br/>
fBodyGyro-mad()-Z<br/>
fBodyGyro-max()-X<br/>
fBodyGyro-max()-Y<br/>
fBodyGyro-max()-Z<br/>
fBodyGyro-min()-X<br/>
fBodyGyro-min()-Y<br/>
fBodyGyro-min()-Z<br/>
fBodyGyro-sma()<br/>
fBodyGyro-energy()-X<br/>
fBodyGyro-energy()-Y<br/>
fBodyGyro-energy()-Z<br/>
fBodyGyro-iqr()-X<br/>
fBodyGyro-iqr()-Y<br/>
fBodyGyro-iqr()-Z<br/>
fBodyGyro-entropy()-X<br/>
fBodyGyro-entropy()-Y<br/>
fBodyGyro-entropy()-Z<br/>
fBodyGyro-maxInds-X<br/>
fBodyGyro-maxInds-Y<br/>
fBodyGyro-maxInds-Z<br/>
fBodyGyro-meanFreq()-X<br/>
fBodyGyro-meanFreq()-Y<br/>
fBodyGyro-meanFreq()-Z<br/>
fBodyGyro-skewness()-X<br/>
fBodyGyro-kurtosis()-X<br/>
fBodyGyro-skewness()-Y<br/>
fBodyGyro-kurtosis()-Y<br/>
fBodyGyro-skewness()-Z<br/>
fBodyGyro-kurtosis()-Z<br/>
fBodyGyro-bandsEnergy()-1,8<br/>
fBodyGyro-bandsEnergy()-9,16<br/>
fBodyGyro-bandsEnergy()-17,24<br/>
fBodyGyro-bandsEnergy()-25,32<br/>
fBodyGyro-bandsEnergy()-33,40<br/>
fBodyGyro-bandsEnergy()-41,48<br/>
fBodyGyro-bandsEnergy()-49,56<br/>
fBodyGyro-bandsEnergy()-57,64<br/>
fBodyGyro-bandsEnergy()-1,16<br/>
fBodyGyro-bandsEnergy()-17,32<br/>
fBodyGyro-bandsEnergy()-33,48<br/>
fBodyGyro-bandsEnergy()-49,64<br/>
fBodyGyro-bandsEnergy()-1,24<br/>
fBodyGyro-bandsEnergy()-25,48<br/>
fBodyGyro-bandsEnergy()-1,8<br/>
fBodyGyro-bandsEnergy()-9,16<br/>
fBodyGyro-bandsEnergy()-17,24<br/>
fBodyGyro-bandsEnergy()-25,32<br/>
fBodyGyro-bandsEnergy()-33,40<br/>
fBodyGyro-bandsEnergy()-41,48<br/>
fBodyGyro-bandsEnergy()-49,56<br/>
fBodyGyro-bandsEnergy()-57,64<br/>
fBodyGyro-bandsEnergy()-1,16<br/>
fBodyGyro-bandsEnergy()-17,32<br/>
fBodyGyro-bandsEnergy()-33,48<br/>
fBodyGyro-bandsEnergy()-49,64<br/>
fBodyGyro-bandsEnergy()-1,24<br/>
fBodyGyro-bandsEnergy()-25,48<br/>
fBodyGyro-bandsEnergy()-1,8<br/>
fBodyGyro-bandsEnergy()-9,16<br/>
fBodyGyro-bandsEnergy()-17,24<br/>
fBodyGyro-bandsEnergy()-25,32<br/>
fBodyGyro-bandsEnergy()-33,40<br/>
fBodyGyro-bandsEnergy()-41,48<br/>
fBodyGyro-bandsEnergy()-49,56<br/>
fBodyGyro-bandsEnergy()-57,64<br/>
fBodyGyro-bandsEnergy()-1,16<br/>
fBodyGyro-bandsEnergy()-17,32<br/>
fBodyGyro-bandsEnergy()-33,48<br/>
fBodyGyro-bandsEnergy()-49,64<br/>
fBodyGyro-bandsEnergy()-1,24<br/>
fBodyGyro-bandsEnergy()-25,48<br/>
fBodyAccMag-mean()<br/>
fBodyAccMag-std()<br/>
fBodyAccMag-mad()<br/>
fBodyAccMag-max()<br/>
fBodyAccMag-min()<br/>
fBodyAccMag-sma()<br/>
fBodyAccMag-energy()<br/>
fBodyAccMag-iqr()<br/>
fBodyAccMag-entropy()<br/>
fBodyAccMag-maxInds<br/>
fBodyAccMag-meanFreq()<br/>
fBodyAccMag-skewness()<br/>
fBodyAccMag-kurtosis()<br/>
fBodyBodyAccJerkMag-mean()<br/>
fBodyBodyAccJerkMag-std()<br/>
fBodyBodyAccJerkMag-mad()<br/>
fBodyBodyAccJerkMag-max()<br/>
fBodyBodyAccJerkMag-min()<br/>
fBodyBodyAccJerkMag-sma()<br/>
fBodyBodyAccJerkMag-energy()<br/>
fBodyBodyAccJerkMag-iqr()<br/>
fBodyBodyAccJerkMag-entropy()<br/>
fBodyBodyAccJerkMag-maxInds<br/>
fBodyBodyAccJerkMag-meanFreq()<br/>
fBodyBodyAccJerkMag-skewness()<br/>
fBodyBodyAccJerkMag-kurtosis()<br/>
fBodyBodyGyroMag-mean()<br/>
fBodyBodyGyroMag-std()<br/>
fBodyBodyGyroMag-mad()<br/>
fBodyBodyGyroMag-max()<br/>
fBodyBodyGyroMag-min()<br/>
fBodyBodyGyroMag-sma()<br/>
fBodyBodyGyroMag-energy()<br/>
fBodyBodyGyroMag-iqr()<br/>
fBodyBodyGyroMag-entropy()<br/>
fBodyBodyGyroMag-maxInds<br/>
fBodyBodyGyroMag-meanFreq()<br/>
fBodyBodyGyroMag-skewness()<br/>
fBodyBodyGyroMag-kurtosis()<br/>
fBodyBodyGyroJerkMag-mean()<br/>
fBodyBodyGyroJerkMag-std()<br/>
fBodyBodyGyroJerkMag-mad()<br/>
fBodyBodyGyroJerkMag-max()<br/>
fBodyBodyGyroJerkMag-min()<br/>
fBodyBodyGyroJerkMag-sma()<br/>
fBodyBodyGyroJerkMag-energy()<br/>
fBodyBodyGyroJerkMag-iqr()<br/>
fBodyBodyGyroJerkMag-entropy()<br/>
fBodyBodyGyroJerkMag-maxInds<br/>
fBodyBodyGyroJerkMag-meanFreq()<br/>
fBodyBodyGyroJerkMag-skewness()<br/>
fBodyBodyGyroJerkMag-kurtosis()<br/>
angle(tBodyAccMean,gravity)<br/>
angle(tBodyAccJerkMean),gravityMean)<br/>
angle(tBodyGyroMean,gravityMean)<br/>
angle(tBodyGyroJerkMean,gravityMean)<br/>
angle(X,gravityMean)<br/>
angle(Y,gravityMean)<br/>
angle(Z,gravityMean)<br/>

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

subject<br/>
<pre> * the subject who performed the activity (30 volunteers).<br/>
activity.names<br/>
<pre> * six activities performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).<br/>
average.tBodyAcc.mean.X<br/>
average.tBodyAcc.mean.Y<br/>
average.tBodyAcc.mean.Z<br/>
average.tGravityAcc.mean.X<br/>
average.tGravityAcc.mean.Y<br/>
average.tGravityAcc.mean.Z<br/>
average.tBodyAccJerk.mean.X<br/>
average.tBodyAccJerk.mean.Y<br/>
average.tBodyAccJerk.mean.Z<br/>
average.tBodyGyro.mean.X<br/>
average.tBodyGyro.mean.Y<br/>
average.tBodyGyro.mean.Z<br/>
average.tBodyGyroJerk.mean.X<br/>
average.tBodyGyroJerk.mean.Y<br/>
average.tBodyGyroJerk.mean.Z<br/>
average.tBodyAccMag.mean<br/>
average.tGravityAccMag.mean<br/>
average.tBodyAccJerkMag.mean<br/>
average.tBodyGyroMag.mean<br/>
average.tBodyGyroJerkMag.mean<br/>
average.fBodyAcc.mean.X<br/>
average.fBodyAcc.mean.Y<br/>
average.fBodyAcc.mean.Z<br/>
average.fBodyAccJerk.mean.X<br/>
average.fBodyAccJerk.mean.Y<br/>
average.fBodyAccJerk.mean.Z<br/>
average.fBodyGyro.mean.X<br/>
average.fBodyGyro.mean.Y<br/>
average.fBodyGyro.mean.Z<br/>
average.fBodyAccMag.mean<br/>
average.fBodyBodyAccJerkMag.mean<br/>
average.fBodyBodyGyroMag.mean<br/>
average.fBodyBodyGyroJerkMag.mean<br/>
average.tBodyAcc.std.X<br/>
average.tBodyAcc.std.Y<br/>
average.tBodyAcc.std.Z<br/>
average.tGravityAcc.std.X<br/>
average.tGravityAcc.std.Y<br/>
average.tGravityAcc.std.Z<br/>
average.tBodyAccJerk.std.X<br/>
average.tBodyAccJerk.std.Y<br/>
average.tBodyAccJerk.std.Z<br/>
average.tBodyGyro.std.X<br/>
average.tBodyGyro.std.Y<br/>
average.tBodyGyro.std.Z<br/>
average.tBodyGyroJerk.std.X<br/>
average.tBodyGyroJerk.std.Y<br/>
average.tBodyGyroJerk.std.Z<br/>
average.tBodyAccMag.std<br/>
average.tGravityAccMag.std<br/>
average.tBodyAccJerkMag.std<br/>
average.tBodyGyroMag.std<br/>
average.tBodyGyroJerkMag.std<br/>
average.fBodyAcc.std.X<br/>
average.fBodyAcc.std.Y<br/>
average.fBodyAcc.std.Z<br/>
average.fBodyAccJerk.std.X<br/>
average.fBodyAccJerk.std.Y<br/>
average.fBodyAccJerk.std.Z<br/>
average.fBodyGyro.std.X<br/>
average.fBodyGyro.std.Y<br/>
average.fBodyGyro.std.Z<br/>
average.fBodyAccMag.std<br/>
average.fBodyBodyAccJerkMag.std<br/>
average.fBodyBodyGyroMag.std<br/>
average.fBodyBodyGyroJerkMag.std<br/>