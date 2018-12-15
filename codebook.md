#Variables used in run_analysis.R 
zipURL: variable that stores the URL of the zip file to be extracted 
zipFile: variable that describes the name of the file; if function will attempt to decipher whether this file exists 
dataPath: variable which outlines the datapath for the zipfile to unzip

activity_labels: variable/dataframe which holds the values from the activity_labels.txt file; holds the labels for the corresponding activity values in the y_ files 
fts: variable/dataframe which holds the values from the features.txt file

#	Variables relating to training set of data 
y_train: variable/dataframe which holds both the activity records for each subject, and its corresponding activity label; includes data from activity_label.txt & y_train.txt 
x_train: variable/dataframe which holds recorded values for each subject; includes data from x_train.txt 
subject_train: variable/dataframe which holds the id of the subjects in the training set; includes data from subject_train.txt

#	Variables relating to test set of data
y_test: variable/dataframe which holds both the activity records for each subject, and its corresponding activity label; includes data from activity_label.txt & y_test.txt 
x_test: variable/dataframe which holds recorded values for each subject
subject_test: variable/dataframe which holds the id of the subjects in the testing set; includes data from subject_test.txt 

# Dataframes within run_analysis.R

HumanData: dataframe which combines y_train, x_train, subject_train, y_test, x_test, subject_test; i.e. data from all the subjects within this study 
tidy_data: dataframe which contains all the measurements with mean and standard deviation of the measurement, along with its corresponding subject, activity and activity label 
complete_set: dataframe which contains the data from tidy_data, only grouped subject and activity label, with the mean of each measurement based on activity 



