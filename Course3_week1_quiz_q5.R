setwd("C:/Users/ah64717/Desktop/DS Assignments")
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url=fileUrl1, destfile="fsspid.csv", mode="w")
dateDownloaded <- date()
print(dateDownloaded)

library(data.table)
DT <- fread(input="fsspid.csv", sep=",")
system.time(DT[,mean(pwgtp15),by=SEX])
DT