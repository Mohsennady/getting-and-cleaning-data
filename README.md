1-Loading the tidyverse package which contains many packages used throughout my script.

2-Downloading the datafile into our working directory into a file called "data.zip".

3-Unzipping the "data.zip" file and extract it into a directory called "testdata".

4-List the files content of train and test subdirectories to explore their contents.

5-Creating the test dataframe with read_table function and col_names=FALSE as it has no column names.

6-Read the column names ("features.txt") with read_lines with n_max =-1 to read all lines.

7-Annotate the column names of the test dataframe by using the vector created in step 6.

8-Creating the testlabels dataframe, that encode the activity, with read_table function and col_names=FALSE as it has no column names.

9-Use the mutate and cut functions to create activitytest dataframe from the testlabels dataframe with the actual naming activities.

10-Creating the subjecttest dataframe with read_table function and col_names=FALSE as it has no column names.

11-Creating the finaltest dataframe by columnbinding the sbjecttest,activitytest and test dataframes.

12-Using the same procedure to create the finaltrain dataframe.

13-Creating the mergeddata dataframe by merging the finaltest and finaltrain dataframes using all=TRUE as all column names are common and piping through tbl_df() function to have a more compact view.

14-Creating the extracteddata dataframe by selecting the activity, subject and all columns containg the strings "mean()" and "std()".

15-Modifying the columnnames of extracteddata dataframe to descriptive ones using the sub() function.

16-Creating the tidydata dataframe from the extracteddata dataframe using the group_by(subject,activity) and summarise_all(mean) to get the average of all columns. As there are 30 subjects X 6 activities = 180 rows of this tidydata dataframe.



