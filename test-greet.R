# Behaviour-Driven Development

source("greet.R")
library("testthat")

describe("greet()", {
  it("can say hello to a user", {
    name <- "Carter"
    expect_equal(greet(name), "hello, Carter")
  })
  it("can say hello to the world", {
    expect_equal(greet(), "hello, world")
  })
  
  
})