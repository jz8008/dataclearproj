The dataset projDataJZ.txt is based on the results from an  experiment whichhave been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) . 

The original data set can be found in 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
And please refer to the paper under license section when using data.

We used the run_analysis.R script on the data and got the mean value of the experiment data for each volunteer conducting each activity. 

This dataset has 180 rows (30 volunteers * 6 activities), each row provides a record.

For each record it has 81 columns, each columd represent an item:

1st, an identifier of the subject who carried out the experiment.[1-30]
2nd, the activity the subject conducted (6 different)
Followed by a 79 vectors contains the mean experimental item data for the subject conducting the activity:
"tbodyacc-mean()-x"               "tbodyacc-mean()-y"              
"tbodyacc-mean()-z"               "tbodyacc-std()-x"               "tbodyacc-std()-y"                "tbodyacc-std()-z"               
"tgravityacc-mean()-x"            "tgravityacc-mean()-y"           
"tgravityacc-mean()-z"            "tgravityacc-std()-x"            
"tgravityacc-std()-y"             "tgravityacc-std()-z"            
"tbodyaccjerk-mean()-x"           "tbodyaccjerk-mean()-y"          
"tbodyaccjerk-mean()-z"           "tbodyaccjerk-std()-x"            "tbodyaccjerk-std()-y"            "tbodyaccjerk-std()-z"           
"tbodygyro-mean()-x"              "tbodygyro-mean()-y"             
"tbodygyro-mean()-z"              "tbodygyro-std()-x"              
"tbodygyro-std()-y"               "tbodygyro-std()-z"              
"tbodygyrojerk-mean()-x"          "tbodygyrojerk-mean()-y"         
"tbodygyrojerk-mean()-z"          "tbodygyrojerk-std()-x"          
"tbodygyrojerk-std()-y"           "tbodygyrojerk-std()-z"          
"tbodyaccmag-mean()"              "tbodyaccmag-std()"              
"tgravityaccmag-mean()"           "tgravityaccmag-std()"           
"tbodyaccjerkmag-mean()"          "tbodyaccjerkmag-std()"          
"tbodygyromag-mean()"             "tbodygyromag-std()"             
"tbodygyrojerkmag-mean()"         "tbodygyrojerkmag-std()"         
"fbodyacc-mean()-x"               "fbodyacc-mean()-y"              
"fbodyacc-mean()-z"               "fbodyacc-std()-x"               
"fbodyacc-std()-y"                "fbodyacc-std()-z"               
"fbodyacc-meanfreq()-x"           "fbodyacc-meanfreq()-y"          
"fbodyacc-meanfreq()-z"           "fbodyaccjerk-mean()-x"          
"fbodyaccjerk-mean()-y"           "fbodyaccjerk-mean()-z"          
"fbodyaccjerk-std()-x"            "fbodyaccjerk-std()-y"           
"fbodyaccjerk-std()-z"            "fbodyaccjerk-meanfreq()-x"      
"fbodyaccjerk-meanfreq()-y"       "fbodyaccjerk-meanfreq()-z"      
"fbodygyro-mean()-x"              "fbodygyro-mean()-y"             
"fbodygyro-mean()-z"              "fbodygyro-std()-x"              
"fbodygyro-std()-y"               "fbodygyro-std()-z"              
"fbodygyro-meanfreq()-x"          "fbodygyro-meanfreq()-y"         
"fbodygyro-meanfreq()-z"          "fbodyaccmag-mean()"             
"fbodyaccmag-std()"               "fbodyaccmag-meanfreq()"         
"fbodybodyaccjerkmag-mean()"      "fbodybodyaccjerkmag-std()"      
"fbodybodyaccjerkmag-meanfreq()"  "fbodybodygyromag-mean()"        
"fbodybodygyromag-std()"          "fbodybodygyromag-meanfreq()"    
"fbodybodygyrojerkmag-mean()"     "fbodybodygyrojerkmag-std()"     
"fbodybodygyrojerkmag-meanfreq()"

Here:
prefix 't' to denote time and prefix 'f' to indicate frequency domain signals (From performing FFT on the time domain data).
'xyz' are used to denote 3-axial signals in the X, Y and Z directions.
'acc' means the acceleration signal. It was separated into body and gravity acceleration signals 'bodyacc' and 'gravityacc'.

The body linear acceleration and angular velocity were derived to obtain Jerk signals (tbodybccJerk and tbodygyroJerk). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccaag, tbodyaccJerkmag, tBodygyromag, tbodygyrojerkmag).

mean(): Mean value
std(): Standard deviation

License:
========

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
