## TASK
The task is to predict the number of bikes in the stations 3 hours in advance.

## DESCRIPTION OF DATA AND MODELS
The challenge is to reuse the models learned in 200 training stations (numbered from 1 to 200) for 75 deployment stations (numbered from 201 to 275). The linear models have been trained on the data of the training stations from the period June 2012-September 2014. The deployment data covers all the 275 stations and is about October 2014. The test data is about 75 test stations from the period November 2014-January 2015. Test data for the leaderboard is about 25 test stations from the period November 2014-December 2014. Full test data about 50 other test stations from the period November 2014-January 2015 is given to participants after paper submission. The training and deployment datasets cover all hours of the respective periods, however some timepoints have some missing values, also in the target variable. 

## Model Development:
At first, the model needs to be trained on the full deployment training data (ie., from stations 1 to 200). The sample training dataset is provided in the partial trainng data folder.

The developed models for the training stations numbered from 1 to 200 is available in the model folder.
