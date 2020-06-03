
Blogs <- function(x) {
  require(tm)
  #load in sample dataset
  blogs_sample <- read.csv(file = "~/Documents/Cousera/10_dc_capstone/dc_final_submission/blogs_sample.csv",stringsAsFactors = FALSE)
  default <- blogs_sample[blogs_sample$length == 1,8]
  
  #"clean" incoming string
  low <- tolower(x)
  punct <- gsub("[[:punct:]]", "", low)
  http <- gsub("+\\d+", "", punct)
  spec <- gsub("^ *|(?<= ) | *$", "", http, perl=T)
  cblogs <- spec
  
  #split x into n1, n2, n3, and n4 length strings
  splitt <- strsplit(cblogs," ")
  len <- length(splitt[[1]])
  if(len < 3) { maxcount <- len} else { maxcount <- 3}
  
  for(i in 1:maxcount) {
    nam <- paste("n",i,"_search",sep = "")
    assign(nam,splitt[[1]][len+1-i])
  }
  
  #3gram
  if(maxcount > 2) {
    n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
    
    n3_samp <- blogs_sample[blogs_sample$less1gram == n3_search,]
    if(nrow(n3_samp)<1) {n3_next <- c(0,default)} else {n3_next <- n3_samp[1,7:8]}
    
  } else { n3_next <- c(0,default)}
  
  #2gram
  if(maxcount > 1) {
    n2_search <- paste(n2_search,n1_search,sep =" ")
    
    n2_samp <- blogs_sample[blogs_sample$less1gram == n2_search,]
    if(nrow(n2_samp)<1) {n2_next <- c(0,default)} else {n2_next <- n2_samp[1,7:8]}
    
  } else { n2_next <- c(0,default)}
  
  #OneGram
  n1_samp <- blogs_sample[blogs_sample$less1gram == n1_search,]
  if(nrow(n1_samp)<1) {n1_next <- c(0,default)} else {n1_next <- n1_samp[1,7:8]}
  
  if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
  if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
  
  output
}

Twitter <- function(x) {
  require(tm)
  #load in sample dataset
  twitter_sample <- read.csv(file = "~/Documents/Cousera/10_dc_capstone/dc_final_submission/twitter_sample.csv",stringsAsFactors = FALSE)
  default <- twitter_sample[twitter_sample$length == 1,8]
  
  #"clean" incoming string
  low <- tolower(x)
  punct <- gsub("[[:punct:]]", "", low)
  http <- gsub("+\\d+", "", punct)
  spec <- gsub("^ *|(?<= ) | *$", "", http, perl=T)
  ctwit <- spec
  
  #split x into n1, n2, n3, and n4 length strings
  splitt <- strsplit(ctwit," ")
  len <- length(splitt[[1]])
  if(len < 3) { maxcount <- len} else { maxcount <- 3}
  
  for(i in 1:maxcount) {
    nam <- paste("n",i,"_search",sep = "")
    assign(nam,splitt[[1]][len+1-i])
  }
  
  #3gram
  if(maxcount > 2) {
    n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
    
    n3_samp <- twitter_sample[twitter_sample$less1gram == n3_search,]
    if(nrow(n3_samp)<1) {n3_next <- c(0,default)} else {n3_next <- n3_samp[1,7:8]}
    
  } else { n3_next <- c(0,default)}
  
  #2gram
  if(maxcount > 1) {
    n2_search <- paste(n2_search,n1_search,sep =" ")
    
    n2_samp <- twitter_sample[twitter_sample$less1gram == n2_search,]
    if(nrow(n2_samp)<1) {n2_next <- c(0,default)} else {n2_next <- n2_samp[1,7:8]}
    
  } else { n2_next <- c(0,default)}
  
  #OneGram
  n1_samp <- twitter_sample[twitter_sample$less1gram == n1_search,]
  if(nrow(n1_samp)<1) {n1_next <- c(0,default)} else {n1_next <- n1_samp[1,7:8]}
  
  if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
  if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
  
  output
}

News <- function(x) {
  require(tm)
  #load in sample dataset
  news_sample <- read.csv(file = "~/Documents/Cousera/10_dc_capstone/dc_final_submission/news_sample.csv",stringsAsFactors = FALSE)
  default <- news_sample[news_sample$length == 1,8]
  
  #"clean" incoming string
  low <- tolower(x)
  punct <- gsub("[[:punct:]]", "", low)
  http <- gsub("+\\d+", "", punct)
  spec <- gsub("^ *|(?<= ) | *$", "", http, perl=T)
  cnews <- spec
  
  #split x into n1, n2, n3, and n4 length strings
  splitt <- strsplit(cnews," ")
  len <- length(splitt[[1]])
  if(len < 3) { maxcount <- len} else { maxcount <- 3}
  
  for(i in 1:maxcount) {
    nam <- paste("n",i,"_search",sep = "")
    assign(nam,splitt[[1]][len+1-i])
  }
  
  #3gram
  if(maxcount > 2) {
    n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
    
    n3_samp <- news_sample[news_sample$less1gram == n3_search,]
    if(nrow(n3_samp)<1) {n3_next <- c(0,default)} else {n3_next <- n3_samp[1,7:8]}
    
  } else { n3_next <- c(0,default)}
  
  #2gram
  if(maxcount > 1) {
    n2_search <- paste(n2_search,n1_search,sep =" ")
    
    n2_samp <- news_sample[news_sample$less1gram == n2_search,]
    if(nrow(n2_samp)<1) {n2_next <- c(0,default)} else {n2_next <- n2_samp[1,7:8]}
    
  } else { n2_next <- c(0,default)}
  
  #OneGram
  n1_samp <- news_sample[news_sample$less1gram == n1_search,]
  if(nrow(n1_samp)<1) {n1_next <- c(0,default)} else {n1_next <- n1_samp[1,7:8]}
  
  if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
  if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
  
  output
}
