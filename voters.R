url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

View(voters)

unique(voters$voter_category)

factor(
  voters$Q21,
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1)
)

