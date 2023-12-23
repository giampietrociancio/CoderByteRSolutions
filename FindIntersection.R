FindIntersection <- function(strArr) { 
  
  # code goes here  
  a <- unlist(strsplit(strArr[[1]], ", "))
  b <- unlist(strsplit(strArr[[2]], ", "))
  i <- a %in% b
  if (any(i)) paste0(unique(a[i]), collapse = ", ") else "false"
  
}