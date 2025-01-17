library(testthat)
library(ggplot2)

source("../R/graph_mean.R")
source("../R/mean_year.R")

test_that("Function outputs a graph", {
  c <- mean_year(2020:2024)
  p <- graph_mean(c)
  expect_s3_class(p, "ggplot")
})