library(testthat)

source("../R/mean_year.R")

# Adjust expected result as per your data.
test_that("Mean_year is valid for a given year input", {
  result <- mean_year(2024)
  expect_equal(result$Média[1], 3.3)
})

test_that("Non-numeric values throw an error", {
  expect_equal(mean_year("Dezembro"), "Please input a valid year or set of years.")
})

test_that("Data out of range throws an error", {
  expect_equal(mean_year(3000), "At least 1 year you've selected is not present in the database")
})
