load("temps.RData")

#We have outliers

# remove values at indexes specified through c bind
temps[-c(3,5,6)]

#logical operations and vectors
temps < 0 | temps > 40

#which, any, all
which(temps < 0 | temps > 40)
temps[which(temps < 0 | temps > 40)]
any(temps < 0 | temps > 40)
all(temps < 0 | temps > 40)

#slice temps vector
temps[!(temps < 0 | temps > 40)]

#with filter by indexes
filter <- which(temps < 0 | temps > 40)

outliers <- temps[filter]
no_outliers <- temps[-filter]

#save treated data to file
save(outliers, file = "outliers.RData")
save(no_outliers, file = "no_outliers.RData")
