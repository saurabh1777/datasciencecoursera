library("sqldf")
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
fname = "ss06pid.csv"
#download.file(url, fname)
library("sqldf")
acs <- read.csv(fname, header = TRUE, sep = ",")

answer2 <- sqldf("select pwgtp1 from acs where AGEP < 50")
head(answer2)