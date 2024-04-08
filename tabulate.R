# votes <- read.table(
#   "votes.csv",
#   sep = ",",
#   header = TRUE
#   )

votes <- read.csv("votes1.csv")

# Totals across rows


total_votes <- c()
for(candidate in row.names(votes)){
 total_votes[candidate] <- sum(votes[candidate, ])
}


apply(votes, MARGIN = 1, FUN = sum)


# Totals across columns
# 
# total_votes <- c()
# for(method in colnames(votes)){
#   total_votes[method] <- sum(votes[, method])
# }

apply(votes, MARGIN = 2, FUN = sum)

sort(total_votes, decreasing = TRUE)

#View(votes)
 
# Access column poll

  #votes[, 2]

  #votes$poll

# Sum votes

  #sum(votes$poll)

'
votes$total <- votes$poll + votes$mail
write.csv(votes, "totals.csv", row.names = FALSE)
'
  
  # colnames(votes)
  # rownames(votes)
