library(testthat)
test_that("dna length is num_bases", {
  expect_equal(nchar(random_dna(10)), 10)
})

test_that("output only contains A, T, G, C", {
  expect_match(random_dna(1000), "^[ATGC]+$")
})
