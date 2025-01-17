library(testthat)


test_that("Scrape is performed as expected, diving the values per column", {
  load("../R/scraped.RData")
  expect_equal(ncol(scraped_infla), 15)  # Adjust expected result as per your data
})