BracketMatcher <- function(str) { 
  
  # code goes here  
  str <- unlist(strsplit(str, ""))
  a <- cumsum(grepl("[(]", str))
  b <- cumsum(grepl("[)]", str))
  if (any(b>a) || tail(b,1)!=tail(a,1)) {0} else {1}
}