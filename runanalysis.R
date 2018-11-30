library(tidyverse)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "./data.zip")
unzip("./data.zip",exdir = "./testdata")
list.files("./testdata/UCI HAR Dataset/test")
list.files("./testdata/UCI HAR Dataset/train")
test<-read_table("./data/testdata/UCI HAR Dataset/test/X_test.txt",col_names = FALSE)
labels<-read_lines("./data/testdata/UCI HAR Dataset/features.txt",n_max = -1)
names(test)<-labels
testlabels<-read_table("./data/testdata/UCI HAR Dataset/test/y_test.txt",
                       col_names = FALSE)
activitytest<-testlabels%>% mutate(activity = cut (X1, breaks = 
                   c(0,1,2,3,4,5,6),
labels = c("walking","walking_upstairs","walking_downstairs","sitting",
           "standing","laying"))) %>% select(activity)
subjecttest<-read_table("./data/testdata/UCI HAR Dataset/test/subject_test.txt",
                        col_names = FALSE) %>% rename (subject=X1)
finaltest<-cbind(subjecttest,activitytest,test)
train<-read_table("./data/testdata/UCI HAR Dataset/train/X_train.txt",col_names = FALSE)
names(train)<-labels

trainlabels<-read_table("./data/testdata/UCI HAR Dataset/train/y_train.txt",
                        col_names = FALSE)
activitytrain<-trainlabels%>% mutate(activity = cut (X1, breaks = 
                 c(0,1,2,3,4,5,6),
                 labels = c("walking","walking_upstairs","walking_downstairs","sitting",
                 "standing","laying"))) %>% select(activity)
subjecttrain<-read_table("./data/testdata/UCI HAR Dataset/test/subject_test.txt",
                        col_names = FALSE) %>% rename (subject=X1)

finaltrain<-cbind(subjecttrain,activitytrain,train)
mergeddata<-merge(finaltest,finaltrain,all = TRUE)%>% tbl_df()
extracteddata<-mergeddata%>% select(subject,activity,contains("mean()"),contains("std()"))
names(extracteddata)<-sub("^[0-9]+","",names(extracteddata))
names(extracteddata)<-sub("tBodyAcc","time_body_acceleration",names(extracteddata))
names(extracteddata)<-sub("tGravityAcc","time_gravity_acceleration",names(extracteddata))
names(extracteddata)<-sub("tBodyGyro","time_body_angular_velocity",names(extracteddata))
names(extracteddata)<-sub("fBodyAcc","frequency_body_acceleration",names(extracteddata))
names(extracteddata)<-sub("fBodyGyro","frequency_body_angular_velocity",names(extracteddata))

names(extracteddata)<-sub("fBodyBodyAcc","frequency_body_accelaeration",names(extracteddata))
names(extracteddata)<-sub("fBodyBodyGyro","frequency_body_angular_velocity",names(extracteddata))
tidydata<-extracteddata %>% group_by(subject,activity) %>% summarise_all(mean)






