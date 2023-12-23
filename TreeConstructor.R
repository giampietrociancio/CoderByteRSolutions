TreeConstructor <- function(strArr) { 
  
  # code goes here  
  strArr <- gsub("[^[:digit:],]", "", strArr)
  strArr <- strsplit(strArr, ",")
  strArr <- matrix(unlist(strArr), byrow = T, nrow = length(strArr))
  
  if (all(table(strArr[,1])<=1) && all(table(strArr[,2])<=2)) 
  {"true"} else {"false"}
  
}


