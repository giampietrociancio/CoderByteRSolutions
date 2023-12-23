CodelandUsernameValidation <- function(str) { 
  
  # code goes here  
  str <- unlist(strsplit(str, ""))
  l <- (length(str)<=25 &  length(str)>=4)
  a <- grepl("[a-z]", str[1], ignore.case = T)
  b <- grepl("[^_]", tail(str,1))
  c <- all(grepl("[_a-z0-9]", str, ignore.case = T))
  if (a & b & c & l ) {"true"} else {"false"}
}