1-Loading the tidyverse package which contains many packages used throughout my script.

2-Downloading the datafile into our working directory into a file called "data.zip".

3-Unzipping the "data.zip" file and extract it into a directory called "testdata".

4-List the files content of train and test subdirectories to explore their contents.

5-Read the test dataset("test/X_test.txt") with read_table function and col_names=FALSE as it has no column names.

6-Read the column names ("features.txt")with read_lines with n_max =-1 to read all lines.

7-Annotate the column names of the test dataset by using the vector created in step 6.

8-Read the test labels("test/y_test.txt"), that encode the activity, with read_table function and col_names=FALSE as it has no column names.

9-Use the mutate and cut functions to create a column named activity with the actual naming activities and the selecting it only.

10-Read the subject labels ("test/subject_test.txt")
