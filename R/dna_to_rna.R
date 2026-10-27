#' Convert a DNA sequence to an RNA sequence
#'
#' This function replaces thymine (T) with uracil (U)
#' in a DNA sequence.
#'
#' @param dna The DNA sequence.
#' @returns The RNA sequence obtained by replacing thymine with uracil.
#'
#' @export
#'
#' @examples
#' dna_to_rna("ATGGACCT")
#' # Returns "AUGGACCU"
#'
dna_to_rna <- function(dna) {
  rna <- gsub("T", "U", dna)
  return(rna)
}
