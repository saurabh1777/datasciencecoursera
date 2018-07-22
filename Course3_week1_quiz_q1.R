library(data.table)
# fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
setwd('C:/Users/ah64717/Desktop/DS Assignments/')
# download.file(fileurl, "Quiz.csv")


alldata = read.table("Quiz.csv", sep = ",", header = TRUE)
sum(!is.na(alldata$VAL[alldata$VAL==24]))


