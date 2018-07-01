pollutantmean = function(directory, pollutant, id = 1:332) {

  flielist = list.files(directory, pattern = ".csv", full.names = TRUE)
  values = numeric()
   
  data = read.csv(filelist[1])
  values = c(values, data[[pollutant]])
  values
  
    for (i in id){
   
     data = read.csv(filelist[i])
     values = c(values, data[[pollutant]])
   
    }
  mean(values, na.rm = TRUE)
 
 }

