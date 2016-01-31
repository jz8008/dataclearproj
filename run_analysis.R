#R script for the project of data collection and clean

#read data from downloaded files
datadir<-"~/Tdata/ProjDataset"
dtest<- read.table(paste(datadir,"test/X_test.txt",sep="/"))
#dtrain<- read.table("~/Tdata/ProjDataset/train/X_train.txt")
dtrain<- read.table(paste(datadir,"train/X_train.txt",sep="/"))
#merge 2 data set together
dmerg<-rbind(dtrain,dtest)

#Did same thing for the test labels
#ltest<- read.table("~/Tdata/ProjDataset/test/Y_test.txt")
ltest<- read.table(paste(datadir,"test/Y_test.txt",sep="/"))
#ltrain<- read.table("~/Tdata/ProjDataset/train/Y_train.txt")
ltrain<- read.table(paste(datadir,"train/Y_train.txt",sep="/"))
lmerg<-rbind(ltrain,ltest)
#Same for the subject
#stest<- read.table("~/Tdata/ProjDataset/test/subject_test.txt")
stest<- read.table(paste(datadir,"test/subject_test.txt",sep="/"))
#strain<- read.table("~/Tdata/ProjDataset/train/subject_train.txt")
strain<- read.table(paste(datadir,"train/subject_train.txt",sep="/"))
smerg<-rbind(strain,stest)

#Merge them together
merg_d<-cbind(smerg,lmerg,dmerg)

#Add colnames to the merged data
#fea<-read.table("~/Tdata/ProjDataset/features.txt")
fea<-read.table(paste(datadir,"features.txt",sep="/"))
feat<-fea$V2
feat<-append(c("Subject","Act_labels"),as.character(feat))
colnames(merg_d)<-feat

#Part 2, extract mean and standard deviation data
#remove the duplicated column names
ext_d<-merg_d[!duplicated(colnames(merg_d))]
#select mean ans std data
selc_d<-select(ext_d,grep("Subject|Act_labels|mean|std",colnames(ext_d)))

#part3 using activity description instead of label
selc_d$Act_labels<-gsub("1","WALKING",selc_d$Act_labels)
selc_d$Act_labels<-gsub("2","WALKING_UPSTAIRS",selc_d$Act_labels)
selc_d$Act_labels<-gsub("3","WALKING_DOWNSTAIRS",selc_d$Act_labels)
selc_d$Act_labels<-gsub("4","SITTING",selc_d$Act_labels)
selc_d$Act_labels<-gsub("5","STANDING",selc_d$Act_labels)
selc_d$Act_labels<-gsub("6","LAYING",selc_d$Act_labels)

#part4
selc_d<-rename(selc_d,Activity=Act_labels)
names(selc_d)<-tolower(names(selc_d))

#part5, group by subject and activity, get mean values for each group
group_d<-group_by(selc_d,subject,activity)
summary<-summarize_each(group_d,funs(mean))

#output the dataset in a text file
write.table(summary, file=paste(datadir,"projDataJZ.txt",sep="/"), eol ="\n",dec=".",col.names=TRUE)


