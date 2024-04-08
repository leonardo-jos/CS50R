#1 select

'dplyr::select(
  storms,
  -c(lat, long, pressure, tropicalstorm_force_diameter, hurricane_force_diameter) # exclude some columns
)'

#2 ends_with

'dplyr::select(
  storms,
  -c(lat, long, pressure, ends_with("diameter")) # exclude some columns
)'


#3 filter

'filter(
  select(
      storms,
      !c(lat, long, pressure, ends_with("diameter")) # exclude some columns
  ),
  status == "hurricane"
)'


# Pipe operator |> more readable code
hurricanes <- 
storms |> 
  select(!c(lat, long, pressure, ends_with("diameter"))) |>
  filter(status == "hurricane") |>
  arrange(desc(wind), name) |>
  distinct(name, year, .keep_all = TRUE)

hurricanes |> 
  select(c(year, name, wind)) |>
  write.csv("hurricanes.csv", row.names = FALSE)

# View(storms)


hurricanes <- read.csv("hurricanes.csv")

View(hurricanes)

'hurricanes |> 
  group_by(year) |>
  arrange(desc(wind)) |>
  slice_head()
'

# same output but for short use function slice_max 

hurricanes |> 
  group_by(year) |>
  slice_max(order_by = wind)

# filter
hurricanes |> 
  group_by(year) |>
  slice_max(order_by = wind) |>
  filter(year %in% 1980:1990)

# summarize and n() count
hurricanes |>
  group_by(year) |>
  summarize(count = n()) # names column to "count"

# ungroup if needed
hurricanes |> 
  group_by(year) |>
  slice_max(order_by = wind) |>
  ungroup()
  

