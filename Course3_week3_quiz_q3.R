library(dplyr)
urlgdp = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
urledu ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
gdp = "gdp.csv"
edu= "edu.csv"
setwd("C:/Users/ah64717/Desktop/DS Assignments")
#download.file(urlgdp, gdp)
#download.file(urledu, edu)
gdpData <- read.csv(gdp, skip = 5, nrows = 190, stringsAsFactors = F, header = F)
eduData <- read.csv(edu, stringsAsFactors = F)
gdpData <- gdpData[, c(1, 2, 4, 5)]
colnames(gdpData) <- c("CountryCode", "Rank", "Country.Name", "GDP.Value")
res = merge(gdpData, eduData, by = 'CountryCode')
nrow(res)
res = arrange(res, desc(Rank))
res[13,3]
res1 = group_by(res, Income.Group)
summarise(res1, mean(Rank))
library(Hmisc)
gdprank = cut2(res$Rank, g=5)
table(gdprank, res$Income.Group)