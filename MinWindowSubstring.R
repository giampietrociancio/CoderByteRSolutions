MinWindowSubstring <- function(strArr) { 
  
  # code goes here  
  N <- unlist(strsplit(strArr[[1]],""))
  K <- unlist(strsplit(strArr[[2]],""))
  
  v <- list()
  for (i in 1:length(K)){
    v <- c(v, list(grep(K[i], N)))
  }
  df <- expand.grid(v)
  rowrangesel <- function(r){ if(sum(duplicated(r))==0){
    max(r)-min(r)} 
    else Inf }
  i <- which.min(apply(df, 1, rowrangesel))
  I <- df[i,]
  substr(strArr[[1]], min(I), max(I))
}