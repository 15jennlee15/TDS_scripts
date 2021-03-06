#########
#!!! Remember to run 'module add R' at the command line first
#########
#Paths are set to run locally, not on the grid.

osuRepo<-'http://ftp.osuosl.org/pub/cran/'

#Check if the packages we need are installed, and if not, install them
if(!require(plyr)){
  install.packages('plyr',repos=osuRepo)
}
library(plyr)

if(!require(dplyr)){
	install.packages('dplyr',repos=osuRepo)
}
library(dplyr)
if(!require(tidyr)){
	install.packages('tidyr',repos=osuRepo)
}
library(tidyr)
if(!require(data.table)){
	install.packages('data.table',repos=osuRepo)
}
library(data.table)
if(!require(R.matlab)){
	install.packages('R.matlab',repos=osuRepo)
}
library(R.matlab)


#define folder locations
tds_folder<-'/Volumes/research/tds/'
stoplight_folder<-'behavioral/stoplight/tds2'
cyberball_folder<-'behavioral/cyberball/TDS2_cyberball_TEST'

#read in cyberball files
files_folder<-paste(tds_folder,cyberball_folder,sep='')
files_to_read<-as.list(dir(files_folder,recursive=T, pattern='agileProgger.*csv$'))
  
setwd(files_folder)

cb_data<-lapply( #data in long form
  files_to_read,
  fread) %>% 
  rbindlist()

dir(files_folder)

#one row per run
cb_data_long<-cb_data #save long data
cb_data<-subset(cb_data_long, V4 == 'connecting(time: 6)')

#separate day, date, and time
cb_data$stamp<-cb_data$V2
cb_data<-separate(cb_data, "V2", c("date", "time"), sep=15)
cb_data<-separate(cb_data, "time", c("time","junk"), sep=9)
cb_data<-separate(cb_data,"date", c("dayofwk", "date"), sep=4)

#isolate year, month, and time
cb_data<-separate(cb_data, "date", c("month", "year"), sep=-5)
cb_data$year<-gsub(pattern=" ",replacement="",x=cb_data$year)
cb_data<-separate(cb_data, "month", c("month","day"), sep=3)
cb_data$day<-gsub(pattern=" ", replacement="",x=cb_data$day)

#change month to number
mo2Num <- function(x) match(tolower(x), tolower(month.abb))
cb_data$month<-mo2Num(cb_data$month)

#add a zero in front of 
cb_data$month[25:164]<-paste("0", cb_data$month[25:164], sep="") 

#remove unnecessary columns
cb_data$dayofwk<-NULL
cb_data$date<-NULL
cb_data$junk<-NULL

#unite dates
cb_data<-unite(cb_data, "date",c(day,month,year), sep="/")

#generate "number" which orders runs by time within each date
cb_data<-
  cb_data %>%
  group_by(date) %>%
  mutate(number = 1:n())

#generate "order" which collapses run 1 and 2 into "1" for first participant and runs 3/4 into "2" for second participant
cb_data$order<-ifelse(cb_data$number==1|cb_data$number==2, 1, 2)

#generate "run" which labels the runs appropriately
cb_data$run<-mapvalues(cb_data$number, from=c("1","2","3","4"), to=c("1","2","1","2"))

#generate variable "datecode"
cb_data$datecode<-with(cb_data, paste(date,order))

##STOPLIGHT DATA

#read in stoplight files
files_folder2<-paste(tds_folder,stoplight_folder,sep='')
setwd(files_folder2)

sl_data<-read.csv('tds2_stoplight_totals_20150827.csv')

#clean sl data
sl_data<-separate(sl_data, "RunStart", c("date", "time"), sep=12) #separate date and time
sl_data<-sl_data[-c(2,4,7:15)] #remove extraneous information
sl_data<-separate(sl_data, "date",c("junk","date"),sep=2) #delete quotation marks
sl_data<-separate(sl_data,"time",c("time","junk"),sep=-2)
sl_data<-sl_data[-c(3,6)]

#isolate month, day, and year
sl_data<-separate(sl_data,"date",c("year","date"),sep=4)
sl_data<-separate(sl_data,"date",c("month","day"),sep=3)
sl_data$month<-substr(sl_data$month, 2, 3)
sl_data$day<-substr(sl_data$day,2,3)

#combine as date
sl_data<-unite(sl_data, "date",c(day,month,year), sep="/")

#remove extraneous runs
sl_data<-distinct(sl_data, SID)

#sort by time
sl_data<-sl_data[order(sl_data$time),]

#sort by date
sl_data<-sl_data[order(as.Date(sl_data$date,format="%d/%m/%Y")),]

#generate variable "number" and rename as "order"
sl_data<-
  sl_data %>%
  group_by(date) %>%
  mutate(number = 1:n())

sl_data$order<-sl_data$number

#generate variable "datecode"
sl_data$datecode<-with(sl_data, paste(date,order))

#match cd_data w/ sl_data by datecode
master<- left_join(cb_data, sl_data, by="datecode", copy=TRUE)

##Used Fix(byDate) command to rename 141 and 145 files by taking into account that the first run of the day at 10am was a test (DATE: Sat Mar 07 2015); 
##ALSO changed Jun 26 2015 so that the first file was practice, runs 1 and 2 for 187 were appropriately labeled, and the last two that day were also test
## Found row 119_2: SID= 119, Run = 2, stamp=Sun Dec 21 2014 15:53:04 GMT-0800 (PST)
## Labeled 196_2 using the stamp Sat Aug 15 2015 14:40:14 GMT-0700 (PDT)
