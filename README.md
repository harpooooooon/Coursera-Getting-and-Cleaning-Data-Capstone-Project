# Getting and Cleaning Data-Course Project 

This project was completed for Coursera's Getting and Cleaning Data's course project. The data used was dervied from the "Human Activity Recognition Using Smartphones Dataset" available online via the University of California, Irvine machine learning repository. 

The dataset includes data acquired from 30 subjects, with 21 of those subjects selected for the training condition, and the remaining 8 subjects selected for the test condition. Participants in both conditions wore a Samsung Galaxy S II on their waist while performing 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. The records within y_train.txt and y_test.txt contain the values of the activities conducted, with activity_label denoting which value corresponds to what action. 

Subject_train & subject_test contains the participant number that did the action for both sets. 

The overall purpose of this project was to produce a tidy dataset that included one activity per subject, along with the mean and standards deviations of their measurements. In order to do so, all the aforementioned files were combined into one dataframe. Then narrow down the dataset to include the measurements that only contained the mean and standard deviations. Afterwards, the data was then grouped by subjects and activity labels to produce a final table with 180 observations of 89 variables, available in atidy format


