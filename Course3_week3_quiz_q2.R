library(jpeg)
imgurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
fname = "q2.jpg"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
download.file(imgurl, fname, mode = 'wb')
res = readJPEG(fname, native = TRUE)
quantile(res, probs = c(0.3, 0.8))