
votes <- read.csv("votes.csv")



p <- ggplot(votes, aes(x = candidate, y = poll)) +
  geom_col(  # coloring columns
    aes(fill = candidate),
    show.legend = FALSE # no legend
  ) +
  scale_fill_viridis_d("Candidate") + # format color for color blindness
  scale_y_continuous(limits = c(0,100)) + # scale y axis
  labs(  # name labels
    x = "Candidate",
    y = "Votes",
    title = "Election Poll Results" 
  ) +
  theme_classic() # change theme 

ggsave(
  "votes.png",
  plot = p,
  height = 1200,
  width = 900,
  units = "px"
)

View(votes)
