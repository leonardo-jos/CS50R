load("anita.RData")

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line(             # plot line  
    linetype = 1,
    linewidth = 0.5
  ) +
  geom_point(             # points
    color = "deepskyblue4",
    size = 2) +
  labs(                    # labels
    x = "Date",
    y = "Wind Speed (Knots)",
    title = "Hurricane Anita"
  ) +
  geom_hline(              # horizontal line
    linetype = 3,
    yintercept = 65
  ) +
  theme_classic()

# Note: geom_line() comes before geom_point() to show line behind the points
