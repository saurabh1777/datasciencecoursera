library(xlsx)

setwd('C:/Users/ah64717/Desktop/DS Assignments/')
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileurl, destfile = "Quiz5.xlsx")
dateDownlad = date()
colIndex = 7:15
rowIndex = 18:23
dat = read.xlsx("Quiz5.xlsx", sheetIndex = 1, header = TRUE, colIndex = colIndex, rowIndex = rowIndex)
sum(dat$Zip*dat$Ext,na.rm=T)


