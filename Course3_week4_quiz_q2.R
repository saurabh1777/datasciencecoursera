library(dplyr)
urlgdp = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
gdp = "gdp.csv"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
#download.file(urlgdp, gdp)
gdpData <- read.csv(gdp, skip = 5, nrows = 190)
clean <- as.numeric(gsub(",", "", gdpData[,5]))
mean(clean, na.rm = TRUE)


