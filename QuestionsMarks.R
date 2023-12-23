QuestionsMarks <- function(str) { 
  
  # code goes here  
  
  str2 <- unlist(strsplit(str, ""))
  i <- grep("[[:digit:]]", str2)
  if (any(i)){
    N <- as.double(str2[i])
    tbl <- c()
    for (j in 1:(length(i)-1)){
      if (N[j]+N[j+1]==10)
      {tbl <- c(tbl, nchar(gsub(pattern = "[^?]", substr(str, i[j], i[j+1]),replacement = ""))==3)  
      }
    }
  } else tbl <- FALSE
  ifelse(all(tbl) & any(tbl), "true", "false")
}