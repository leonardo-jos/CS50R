source("average.R")
#library("devtools")
library("testthat")

test_that("'average' calculates mean", {
  expect_equal(average(c(1, 2, 3)), 2)
  expect_equal(average(c(-1, -2, 0, 1, 2)), 0)
  expect_equal(average(c(-1, -2, 0)), -1)
  expect_equal(average(c(0.1, 0.5)), 0.3)
})

test_that("'average' returns NA with NAs in input", {
  expect_equal(suppressWarnings(average(c(NA, NA, NA))), NA)
  expect_equal(suppressWarnings(average(c(NA, 0))), NA)
})

test_that("'average' warns about NAs in input", {
  expect_warning(average(c(NA, 2, 3)))
  expect_warning(average(c(NA, NA, NA)))
})

test_that("'average' stops if 'x' is non-numeric", {
  expect_error(average(c("quack!")))
  expect_error(average(c("1", "2", "3")))
})



