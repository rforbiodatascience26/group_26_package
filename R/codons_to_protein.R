#' This function translates a sequence of codons into a protein sequence using the genetic code.
#'
#' @param codons A vector of RNA codons.
#'
#' @returns A character string representing the protein sequence.
#' @export
#'
#' @examples
#' codons_to_protein(c("AUG", "GGC", "UUU"))
#' # Returns "AGF"
#'
codons_to_protein <- function(codons) {
  protein_sequence <- paste0(codon_table[codons], collapse = "")
  return(protein_sequence)
}
