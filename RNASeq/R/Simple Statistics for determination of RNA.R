#' @title RNA Sequence determination
#' @description Determines a RNA Sequence from a DNA sequence
#' @param dna_sequence A DNA Sequence Object
#' @return A RNA Sequence Object
#' @export


rna_from_dna <- function(dna_sequence) {
  # Define transcription probabilities
  p <- c(0.4, 0.6, 0.1, 0.9)  # Probability of transcribing A, T, G, C to RNA
  q <- c(0.4, 0.6, 0.1, 0.9)  # Probability of transcribing A, T, G, C in RNA

  # Transcribe DNA to RNA using simple statistics
  rna_sequence <- ""
  for (i in 1:nchar(dna_sequence)) {
    if (substr(dna_sequence, i, i) == "A") {
      rna_sequence <- paste(rna_sequence, ifelse(runif(1) == q[1], "A", "U"), sep = "")
    } else if (substr(dna_sequence, i, i) == "C") {
      rna_sequence <- paste(rna_sequence, ifelse(runif(1) == q[2], "C", "G"), sep = "")
    } else if (substr(dna_sequence, i, i) == "G") {
      rna_sequence <- paste(rna_sequence, ifelse(runif(1) == q[3], "G", "C"), sep = "")
    } else {
      rna_sequence <- paste(rna_sequence, ifelse(runif(1) == q[4], "T", "A"), sep = "")
    }
  }

  return(rna_sequence)
}
