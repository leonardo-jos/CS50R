greet <- function(to = "world") {
  return(paste("hello,", to))
}

library(ducksay)

name <- readline("What's your name? ")
greeting <- ducksay(paste("Hello,", name)) 
cat(greeting)