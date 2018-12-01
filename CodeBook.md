# CodeBook

##The data folder after downloading and unzipping is called the UCI HAR dataset.

##The UCI HAR folder contains the train and test folders, features.txt used to create the 561 column names of the data frames and the activity_labels.txt containing the 6 activity codes.

##The test folder contains X_test.txt (the main test data), y_test.txt(the codes denoting activities) and subject_test.txt (the 1-30 numbers denoting the subject performing the test).

##The finaltest dataframe contains 563 columns (561 measurement variables, 1 subject column, 1 activity column).

##The same procedure was used to create the finaltrain dataframe.

##The mergeddata dataframe contains 10299 rows(2947 rows of finaltest + 7352 rows of finaltrain).

##The extracteddata dataframe contain 68 columns (subject,activity,66 measurement variables containing mean or standarddeviation of each measurement.

##The tidydata dataframe was created from the extracteddata dataframe after grouping by subject and activity and containing 180 rows for each unique subject and activity and the mean for each measurement.

## Variables description
## Subject 
Each row identifies the subject who performed the activity for each row. Range from 1-30.
## Activity
Each row is the one of the 6 activities performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

## time_body_acceleration-mean()-XYZ
The mean value of time domain acceleration signal (body motion component) in the X,Y or Z-axes in standard gravity units 'g'.

## time_gravity_acceleration-mean()-XYZ
The mean value of time domain acceleration signal (gravitational motion component) in the X,Y or Z-axes in standard gravity units 'g'.

##  time_body_accelerationJerk-mean()-XYZ
The mean value of time domain acceleration jerk signal in the X,Y or Z-axes in standard gravity units 'g'.

## time_body_angular_velocity-mean()-XYZ
The mean value of time domain angular velocity signal in the X,Y or Z-axes in radians/second.

## time_body_angular_velocityJerk-mean()-XYZ
The mean value of time domain angular velocity jerk signal in the X,Y or Z-axes in radians/second.

## time_body_accelerationMag-mean()
The mean value of the magnitude of time domain acceleration three-dimensional signals (body motion component)in standard gravity units 'g'.

## time_gravity_accelerationMag-mean()
The mean value of the magnitude of time domain acceleration three-dimensional signals (gravitational motion component)in standard gravity units 'g'.

## time_body_accelerationJerkMag-mean()
The mean value of the magnitude of time domain acceleration three-dimensional jerk signals in standard gravity units 'g'.

## time_body_angular_velocityMag-mean()
The mean value of the magnitude of time domain angular velocity three-dimensional signals in radians/second.

## time_body_angular_velocityJerkMag-mean()
The mean value of the magnitude of time domain angular velocity three-dimensional jerk signals in radians/second.

## frequency_body_acceleration-mean()-XYZ,frequency_body_accelerationJerk-mean()-XYZ, frequency_body_angular_velocity-mean()-XYZ, frequency_body_accelerationMag-mean(), frequency_body_accelaerationJerkMag-mean(), frequency_body_angular_velocityMag-mean(), frequency_body_angular_velocityJerkMag-mean()
The mean values as above but for the frequency domain signals in the same units.

## time_body_acceleration-std()-XYZ, time_gravity_acceleration-std()-XYZ,.......end of columns names 
The standard deviation instead of mean for all the above variables in the same units.
