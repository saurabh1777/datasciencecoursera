MyCor = function(directory, threshold){
  
    # reading the file
  
  fl = read.csv(directory)
  
  #Removing the NA values
  
  fl2 = na.omit(fl[,,])
  Cnt = nrow(fl2)
 if (Cnt > threshold )
  {
  ncor =  cor(fl2$sulfate, fl2$nitrate)
  ncor
 }
  
}
