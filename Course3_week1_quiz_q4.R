library(XML)
fileUrl = "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc = xmlTreeParse(fileUrl, useInternal=TRUE)
rootNode = xmlRoot(doc)
#xmlName(rootNode)
#names(rootNode)
#rootNode[[1]][[1]]
zipcode <- xpathSApply(rootNode,"//zipcode",xmlValue)
length(zipcode[zipcode==21231])