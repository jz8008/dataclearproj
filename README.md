
This repository contains:i

README.md
CodeBook.md
run_analysis.R and the final data projDataJZ.txt

*Note: You have to modify datadir="" in the run_analysis.R script to get the input data directory right to get the script running.

1st, run_analysis.R reads in the raw experiment data from datadir
directory and merges train data and test data together. Then it reads in 'subject' and 'activity_label' data, merges them with 
the experiments data. Then it reads in the feature names and used them as variable names of the merged dataset.

2nd, it extracts only the mean and standard deviation data out.

3rd, it rename the activity labels with descriptive activity names.

4th, it use lower cased desciptive names for the variables

5th, it creates a new data set based on the mean() of the variabled grouped by subject and activity.

6th, it write out the final tidy data set.
