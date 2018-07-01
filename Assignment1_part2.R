Mycount = function(directory, id){
  
  # Fetching a file name
  fln = id
  fname = paste(directory, "/", formatC(id, width = 3, flag = 0),".csv", sep ="")
  # reading the file
  
  fl = read.csv(fname)
  
  #Removing the NA values
  
  fl2 = na.omit(fl[,,])
  Cnt = nrow(fl2)
  output = c("id" = id, "nobs" = Cnt)
  output
  
}


