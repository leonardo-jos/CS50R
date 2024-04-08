chicks <- read.csv("chicks.csv")
mean(chicks$weight, na.rm = TRUE)

#by inspecting the table we know
casein_chicks <- chicks[1:3,]

#let's create a filter
filter <- chicks$feed == "casein"
casein_chicks <- chicks[filter, ]

mean(casein_chicks$weight, na.rm = TRUE)

#find NA values, will show row values
which(is.na(chicks$weight))

#remove them chicks[rows, cols]
chicks <- chicks[!is.na(chicks$weight), ]

#or by using subset command
chicks <- subset(chicks, !is.na(weight))
soybean_chicks <- subset(
  #original object
  chicks, 
  #condition 
  feed == "soybean")

#only 13 elements after slicing but old count is up to 17 
rownames(chicks)

#resets row count
rownames(chicks) <- NULL

sum(is.na(chicks$weight))

View(chicks)
