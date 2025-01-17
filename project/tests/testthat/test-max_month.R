library(testthat)

source("../R/max_month.R")

# Adjust expected result as per your data.
test_that("Max Month is valid for a given year input", {
  result <- max_month(2024)
  expect_equal(result$Mês[1], "Janeiro")
})

test_that("Non-numeric values throw an error", {
  expect_equal(max_month("Dezembro"), "Please input a valid year or set of years.")
})

test_that("Data out of range throws an error", {
  expect_equal(max_month(3000), "At least 1 year you've selected is not present in the database")
})
