library(data.table)
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
f = "ss06hid.csv"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
#download.file(url, f)
result = read.csv(f, header = TRUE, sep = ",")
result1 = names(result)
splt = strsplit(result1, "wgtp")
splt[[123]]