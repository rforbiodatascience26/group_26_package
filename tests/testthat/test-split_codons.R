test_that("split_codons splits a sequence into codons", {
  expect_equal(
    split_codons("ATGCCATTT"),
    c("ATG", "CCA", "TTT")
  )
})

test_that("split_codons respects the starting position", {
  expect_equal(
    split_codons("ATGCCATTT", start = 2),
    c("TGC", "CAT")
  )
})

test_that("split_codons omits incomplete trailing codons", {
  expect_equal(
    split_codons("ATGCCAT"),
    c("ATG", "CCA")
  )
})

test_that("split_codons handles a sequence with exactly three characters", {
  expect_equal(
    split_codons("ATG"),
    "ATG"
  )
})

