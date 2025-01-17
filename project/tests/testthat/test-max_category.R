library(testthat)

source("../R/max_category.R")

# Adjust expected result as per your data.
test_that("Max Category is valid for a given year input", {
  expect_equal(max_category(,2024), "A categoria com maior variação de índice foi Restaurantes e hotéis no mês de Janeiro de 2024 com o valor de 11.9 %")
})

test_that("Only one entry allowed per field", {
  expect_equal(max_category(,2014:2020), "Please insert just one year.")
})

test_that("Data out of range throws an error", {
  expect_equal(max_category(,3000), "The year you've selected is not present in the database.")
})
