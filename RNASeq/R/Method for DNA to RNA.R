#' @title Method for DNA to RNA
#' @rdname DNASequence-methods
#' @export

setMethod("as.character", signature(x="DNAString"), function(x){
  Biostrings::RNAString(x@sequence)
})
