test_that("DNA is converted to RNA", {
  expect_equal(dna_to_rna("ATCG"),"AUCG")
})

test_that("all T are replaced by U", {
  expect_equal(dna_to_rna("TTTT"), "UUUU")
})

test_that("DNA without T remains unchanged", {
  expect_equal(dna_to_rna("AGCC"), "AGCC")
})
