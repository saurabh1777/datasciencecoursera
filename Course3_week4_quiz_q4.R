library(dplyr)
urlgdp = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
urledu ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
gdp = "gdp.csv"
edu= "edu.csv"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
#download.file(urlgdp, gdp)
#download.file(urledu, edu)
gdpData <- read.csv(gdp, skip = 5, nrows = 190, stringsAsFactors = F)
eduData <- read.csv(edu, stringsAsFactors = F)
mergedata = merge(gdpData, eduData, by.x = "X", by.y = "CountryCode")
june = grep("Fiscal year end", mergedata$Special.Notes)
june