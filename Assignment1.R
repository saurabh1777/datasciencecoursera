myMean = function(directory, pollutant, id){
  
  # Fetching a file name
  
  
  fname = paste(directory, "/", formatC(id, width = 3, flag = 0),".csv", sep ="")
  # reading the file
  
  fl = read.csv(fname)
  
  #Removing the NA values
  
  fl2 = na.omit(fl[,pollutant])
  
  mean(fl2)
  
  
}


