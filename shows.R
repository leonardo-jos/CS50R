shows <- read.csv("shows.csv", sep = " ")

# misundertood this part of lecture 4
# shows$votes <- sample(1:20, nrow(shows), replace = TRUE) 

shows$show <- shows$show |>
  str_trim() |>
  str_squish() |>
  str_to_title()

shows$show[str_detect(shows$show, "Avatar")] <- "Avatar: The Last Airbender"

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup()
  arrange(desc(votes))
  

