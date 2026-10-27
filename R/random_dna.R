#' generate a random dna sequence
#' @param num_bases number of nucleotides in the dna sequence
#' @return a string of char of num_bases length, made of letters A, T, G, C
#' @export

random_dna <- function(num_bases){
  bases <- sample(c("A", "T", "G", "C"), size = num_bases, replace = TRUE)
  dna_sequence <- paste0(bases, collapse = "")
  return(dna_sequence)
}
