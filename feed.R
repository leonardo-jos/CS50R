# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Format options
#formatted_options <- paste0(1:6, ". ", feed_options)

# Prompt user with options
#cat(formatted_options, sep = "\n")
#feed_choice <- as.integer(readline("Your feed choice: "))

# Prompt user for input (alternative)
feed_choice <- menu(
  feed_options,
  title = "Feed type:"
)


# Print selected option
select_feed <- feed_options[feed_choice]
print(subset(chicks, feed == select_feed))