complete = function(directory, id = 1:332) {
  
  flielist = list.files(directory, pattern = ".csv", full.names = TRUE)
  nobs = numeric()

  for (i in id){
    
    data = read.csv(filelist[i])
    nobs = c(nobs,sum(complete.cases(data)))
      }

data.frame(id,nobs)
  
}