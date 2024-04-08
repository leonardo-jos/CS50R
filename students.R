# setwd(file.path(getwd(),"cs50R"))
# library(tidyverse)


students <- read.csv("students.csv")

View(students)

students <-
  tidyr::pivot_wider(
    students,
    id_cols = student,
    names_from = attribute, 
    values_from = value
  ) 

students$GPA <- as.numeric(students$GPA)

students |> 
  group_by(major) |>
  summarize(Avg_GPA = mean(GPA))
  

