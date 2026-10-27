test_that("codons are translated into a protein sequence", {
  expect_equal(codons_to_protein(c("AUG", "GGC", "UUU")), "AGF")
})

test_that("a single codon is translated correctly", {
  expect_equal(codons_to_protein("AUG"), "M")
})

test_that("multiple amino acids are joined without spaces", {
  expect_equal(codons_to_protein(c("AUG", "AUG")), "MM")
})
