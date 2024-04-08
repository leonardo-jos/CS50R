'
get_votes <- function(prompt = "Enter values: "){
  votes <- suppressWarnings(as.integer(readline(prompt)))
  return(ifelse(is.na(votes), 0, votes))
}
'
# With loop
get_votes <- function(prompt = "Enter values: "){
  repeat{
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if(!is.na(votes)){
      return(votes)
    }
  }
}

for(i in c("Mario", "Peach", "Bowser")){
  votes <- get_votes(paste0(i, ": "))
  total <- total + votes
}

cat("Total votes:", total)

'
mario <- as.integer(readline("Mario: "))
peach <- as.integer(readline("Peach: "))
bowser <- as.integer(readline("Bowser: "))
'
'
mario <- get_votes("Mario: ")
peach <- get_votes("Peach: ")
bowser <- get_votes("Bowser: ")
'

'
total <- sum(mario, peach, bowser)
cat("Total votes:", total)
'