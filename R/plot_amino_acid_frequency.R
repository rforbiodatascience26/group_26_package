#' This function counts the occurrences of each aminoacid
#' in a protein sequence and displays them in a bar plot.
#'
#' @param protein_sequence an aminoacid sequence.
#'
#' @returns a ggplot object showing the frequency of each
#' aminoacid in the protein sequence.
#' @export
#'
#' @examples
#' plot_amino_acid_frequency("AGFAGM")
plot_amino_acid_frequency <- function(protein_sequence) {

  # Split the protein sequence into individual amino acids
  amino_acids <- protein_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"),
                       simplify = TRUE) |>
    as.character() |>
    unique()

  # Count the occurrences of each aminoacid
  counts <- sapply(amino_acids,function(amino_acid) {
    stringr::str_count(string = protein_sequence,
                       pattern = amino_acid)
    }) |>
    as.data.frame()

  # Set column names and store aminoacid labels
  colnames(counts) <- "Counts"
  counts[["Amino_acid"]] <- rownames(counts)

  # Create a bar plot of amino acidfrequencies
  plot <- counts |>
    ggplot2::ggplot(
      ggplot2::aes(
        x = Amino_acid,
        y = Counts,
        fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the plot
  return(plot)
}
