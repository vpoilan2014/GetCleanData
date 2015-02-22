The tidy data Contains the feature informations averaged over for each subject and 
each activity (30* 6 = 180 rows of observations for 79 features described below).

The Subjects are numbered from 1 to 30

The Activity labels used are 
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The List of original and the descriptive variable names for the features below.
To avoid very long names, some abbreviations like acc- Acceleration, Mag- Magnitude
and Gyro are not changed. 
The t and f Prefix are changed to represent the Time and Frequency (Freq) domains. 
mean() & std() are changed to Mean and Std to improve readability.
For further information on features, please refer to the original 
data description found in "/UCI HAR Dataset/features_info.txt" 

1    tBodyAcc-mean()-X    TimeBodyAcc-Mean-X
2    tBodyAcc-mean()-Y    TimeBodyAcc-Mean-Y
3    tBodyAcc-mean()-Z    TimeBodyAcc-Mean-Z
4    tBodyAcc-std()-X    TimeBodyAcc-StdDev-X
5    tBodyAcc-std()-Y    TimeBodyAcc-StdDev-Y
6    tBodyAcc-std()-Z    TimeBodyAcc-StdDev-Z
7    tGravityAcc-mean()-X    TimeGravityAcc-Mean-X
8    tGravityAcc-mean()-Y    TimeGravityAcc-Mean-Y
9    tGravityAcc-mean()-Z    TimeGravityAcc-Mean-Z
10    tGravityAcc-std()-X    TimeGravityAcc-StdDev-X
11    tGravityAcc-std()-Y    TimeGravityAcc-StdDev-Y
12    tGravityAcc-std()-Z    TimeGravityAcc-StdDev-Z
13    tBodyAccJerk-mean()-X    TimeBodyAccJerk-Mean-X
14    tBodyAccJerk-mean()-Y    TimeBodyAccJerk-Mean-Y
15    tBodyAccJerk-mean()-Z    TimeBodyAccJerk-Mean-Z
16    tBodyAccJerk-std()-X    TimeBodyAccJerk-StdDev-X
17    tBodyAccJerk-std()-Y    TimeBodyAccJerk-StdDev-Y
18    tBodyAccJerk-std()-Z    TimeBodyAccJerk-StdDev-Z
19    tBodyGyro-mean()-X    TimeBodyGyro-Mean-X
20    tBodyGyro-mean()-Y    TimeBodyGyro-Mean-Y
21    tBodyGyro-mean()-Z    TimeBodyGyro-Mean-Z
22    tBodyGyro-std()-X    TimeBodyGyro-StdDev-X
23    tBodyGyro-std()-Y    TimeBodyGyro-StdDev-Y
24    tBodyGyro-std()-Z    TimeBodyGyro-StdDev-Z
25    tBodyGyroJerk-mean()-X    TimeBodyGyroJerk-Mean-X
26    tBodyGyroJerk-mean()-Y    TimeBodyGyroJerk-Mean-Y
27    tBodyGyroJerk-mean()-Z    TimeBodyGyroJerk-Mean-Z
28    tBodyGyroJerk-std()-X    TimeBodyGyroJerk-StdDev-X
29    tBodyGyroJerk-std()-Y    TimeBodyGyroJerk-StdDev-Y
30    tBodyGyroJerk-std()-Z    TimeBodyGyroJerk-StdDev-Z
31    tBodyAccMag-mean()    TimeBodyAccMag-Mean
32    tBodyAccMag-std()    TimeBodyAccMag-StdDev
33    tGravityAccMag-mean()    TimeGravityAccMag-Mean
34    tGravityAccMag-std()    TimeGravityAccMag-StdDev
35    tBodyAccJerkMag-mean()    TimeBodyAccJerkMag-Mean
36    tBodyAccJerkMag-std()    TimeBodyAccJerkMag-StdDev
37    tBodyGyroMag-mean()    TimeBodyGyroMag-Mean
38    tBodyGyroMag-std()    TimeBodyGyroMag-StdDev
39    tBodyGyroJerkMag-mean()    TimeBodyGyroJerkMag-Mean
40    tBodyGyroJerkMag-std()    TimeBodyGyroJerkMag-StdDev
41    fBodyAcc-mean()-X    FreqBodyAcc-Mean-X
42    fBodyAcc-mean()-Y    FreqBodyAcc-Mean-Y
43    fBodyAcc-mean()-Z    FreqBodyAcc-Mean-Z
44    fBodyAcc-std()-X    FreqBodyAcc-StdDev-X
45    fBodyAcc-std()-Y    FreqBodyAcc-StdDev-Y
46    fBodyAcc-std()-Z    FreqBodyAcc-StdDev-Z
47    fBodyAcc-meanFreq()-X    FreqBodyAcc-MeanFreq-X
48    fBodyAcc-meanFreq()-Y    FreqBodyAcc-MeanFreq-Y
49    fBodyAcc-meanFreq()-Z    FreqBodyAcc-MeanFreq-Z
50    fBodyAccJerk-mean()-X    FreqBodyAccJerk-Mean-X
51    fBodyAccJerk-mean()-Y    FreqBodyAccJerk-Mean-Y
52    fBodyAccJerk-mean()-Z    FreqBodyAccJerk-Mean-Z
53    fBodyAccJerk-std()-X    FreqBodyAccJerk-StdDev-X
54    fBodyAccJerk-std()-Y    FreqBodyAccJerk-StdDev-Y
55    fBodyAccJerk-std()-Z    FreqBodyAccJerk-StdDev-Z
56    fBodyAccJerk-meanFreq()-X    FreqBodyAccJerk-MeanFreq-X
57    fBodyAccJerk-meanFreq()-Y    FreqBodyAccJerk-MeanFreq-Y
58    fBodyAccJerk-meanFreq()-Z    FreqBodyAccJerk-MeanFreq-Z
59    fBodyGyro-mean()-X    FreqBodyGyro-Mean-X
60    fBodyGyro-mean()-Y    FreqBodyGyro-Mean-Y
61    fBodyGyro-mean()-Z    FreqBodyGyro-Mean-Z
62    fBodyGyro-std()-X    FreqBodyGyro-StdDev-X
63    fBodyGyro-std()-Y    FreqBodyGyro-StdDev-Y
64    fBodyGyro-std()-Z    FreqBodyGyro-StdDev-Z
65    fBodyGyro-meanFreq()-X    FreqBodyGyro-MeanFreq-X
66    fBodyGyro-meanFreq()-Y    FreqBodyGyro-MeanFreq-Y
67    fBodyGyro-meanFreq()-Z    FreqBodyGyro-MeanFreq-Z
68    fBodyAccMag-mean()    FreqBodyAccMag-Mean
69    fBodyAccMag-std()    FreqBodyAccMag-StdDev
70    fBodyAccMag-meanFreq()    FreqBodyAccMag-MeanFreq
71    fBodyBodyAccJerkMag-mean()    FreqBodyBodyAccJerkMag-Mean
72    fBodyBodyAccJerkMag-std()    FreqBodyBodyAccJerkMag-StdDev
73    fBodyBodyAccJerkMag-meanFreq()    FreqBodyBodyAccJerkMag-MeanFreq
74    fBodyBodyGyroMag-mean()    FreqBodyBodyGyroMag-Mean
75    fBodyBodyGyroMag-std()    FreqBodyBodyGyroMag-StdDev
76    fBodyBodyGyroMag-meanFreq()    FreqBodyBodyGyroMag-MeanFreq
77    fBodyBodyGyroJerkMag-mean()    FreqBodyBodyGyroJerkMag-Mean
78    fBodyBodyGyroJerkMag-std()    FreqBodyBodyGyroJerkMag-StdDev
79    fBodyBodyGyroJerkMag-meanFreq()    FreqBodyBodyGyroJerkMag-MeanFreq





