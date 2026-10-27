#' Split a Sequence into Codons
#'
#' Splits a sequence into groups of three characters, starting at a specified
#' position.
#'
#' @param input_sequence A character string containing the sequence to split.
#' @param start An integer specifying the position at which to start splitting.
#'   Defaults to 1.
#'
#' @return A character vector containing the sequence split into groups of
#'   three characters. Any incomplete trailing group is omitted.
#'
#' @examples
#' split_codons("ATGCCATTT")
#' split_codons("ATGCCATTT", start = 2)
#' @export

split_codons <- function(input_sequence, start = 1){
  sequence_length <- nchar(input_sequence)
  codons <- substring(input_sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
