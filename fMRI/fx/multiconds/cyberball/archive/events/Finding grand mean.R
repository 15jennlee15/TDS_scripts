# Theresa Cheng | Nandita Vijayakumar
# 4/12/2016
# This script provides descriptive stats for identifying the grand mean for pmods 

```{r, warning=FALSE, echo=FALSE}
# LOAD PACKAGES
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

if(!require(chron)){
  install.packages('R.matlab',repos=osuRepo)
}
library(chron)
library(R.matlab)
if(!require(knitr)){
  install.packages('R.matlab',repos=osuRepo)
}
library(knitr)
```

```{r, warning=FALSE, echo=FALSE} 
# LOAD FILES
rm(list=ls())

#define folder locations
# tds_folder<-'/Volumes/research/tds/'

setwd("/Volumes/TDS/behavior/CyberBall/multiconds/Summary/tds2/")

#list the files 
listFiles<-list.files(recursive=F, pattern='summary_events_cyb.*_2.csv$') # Can be 1 or 2 to examine inc or exc runs 
```

```{r, warning=FALSE, echo=FALSE}
# MERGE ALL SUMMARY FILES

setwd("/Volumes/TDS/behavior/CyberBall/multiconds/Summary/tds2/")
df<-do.call("rbind", lapply(listFiles, read.csv, header = TRUE))

df_pmod <- subset(df,df$names==3) #change to 3 to identify pmods for computer throws (i.e. exclusion); 4 for inclusion runs

df_pmod$index = NA

for(i in 1:NROW(df_pmod)){
  if (is.na(df_pmod$pmod[i+1])) {
    df_pmod$index[i] = 1}
  else if (!(df_pmod$pmod[i] - df_pmod$pmod[i+1]) == -1) {
    df_pmod$index[i] = 1
  } else {
  }}

df_pmod <- subset(df_pmod,df_pmod$index==1)
mean_pmod <- mean(df_pmod$pmod)
summary(df_pmod$pmod)
sd(df_pmod$pmod)

