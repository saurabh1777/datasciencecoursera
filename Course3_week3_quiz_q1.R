library(dplyr)
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
f = "ss06hid.csv"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
#download.file(url, f)
result = read.csv(f, header = TRUE, sep = ",")
agricultureLogical = (result$ACR==3 & result$AGS==6)
res = which(agricultureLogical)
head(res)