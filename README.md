# Decision-Trees-Classifier-Bremen-Challange

This is a task by the Bremen 2019 Big data challenge:

The Bremen Big Data Challenge 2019 is about classifying various everyday and athletic movements. For this, sensor data recorded on one leg above and below the knee are available. The training data set contains the data of 15 subjects, four others are used to evaluate your solutions.

The Data:

In the data there are the following 22 movements:

run
walk
stand
sit
sit-to-stand, stand-to-sit
stair-up, stair-down
jump-one-leg, jump-two-leg
curve-left-step, curve-right-step
curve-left-spin-Lfirst, curve-left-spin-Rfirst, curve-right-spin-Lfirst, curve-right-spin-Rfirst
lateral-shuffle-left, lateral-shuffle-right
v-cut-left-Lfirst, v-cut-left-Rfirst, v-cut-right-Lfirst, v-cut-right-Rfirst
All data are available as CSV files (comma separated values). The first three lines of the training data (train.csv) look like this: Subject Datafile Label Subject02, Subject02 / Subject02_Aufnahme000.csv, curve-left-step Subject02, Subject02 / Subject02_Aufnahme001.csv, curve-left-step Subject02, Subject02 / Subject02_Aufnahme002.csv, stand-to-sit

The test data (challenge.csv) has the following format:

Subject, Datafile, Label Subject01, Subject01 / Subject01_Aufnahme000.csv, X Subject01, Subject01 / Subject01_Aufnahme001.csv, X Subject01, Subject01 / Subject01_Aufnahme002.csv, X

The columns have the same meaning as in train.csv. The "Label" column constantly contains the letter X to indicate that this value is not present. When submitting solutions, your submission should exactly match the test data, each one being X replaced by a label. This label corresponds to your classification result for this movement. It is important that the spelling (including upper / lower case) of the textual labels exactly matches the spelling of the labels in the training data.

The data files look like this example (Example: Subject02_Aufnahme000.csv)

32688, 322224, 32991, 32609, 3227, 3030, 377, 336, 347, 249, 249, 298, 286, 28, 28, 16, 1636, 32744, 2325, 31, 29, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 16, 16, 16, 16, 16, 16, 16, 1673 ,34610, 27374, 29068, 29264, 28408, 31784, 28133, 29295, 29244, 33216, 37140, 34736 32788, 32934, 32767, 32624, 32899, 33048, 37168, 34610, 27374, 29068, 29264, 28408, 31784, 28133, 29295, 29244, 33216, 37140, 34736

Each line represents the sensor values ​​measured at one time (sampled at 1000 Hz). The columns represent the individual sensors:

EMG1
EMG2
EMG3
EMG4
Airborne
ACC upper X
ACC upper Y
ACC upper Z
Goniometer X
ACC lower X
ACC lower Y
ACC loewr Z 12 Goniometer Y
Gyro upper X
Gyro upper Y
Gyro upper Z
Gyro lower X
Gyro lower Y
Gyro lower Z
