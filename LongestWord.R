LongestWord <- function(sen) { 
  
  # code goes here  
  L <- unlist(strsplit(sen, "[^A-Za-z0-9]"))
  l <- which.max(lapply(strsplit(L,""), length))
  L[l]
}