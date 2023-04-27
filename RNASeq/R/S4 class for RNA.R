#' @title RNASequence class
#' @description S4 class for representing RNA sequences.
#' @slot RNASequence A character string representing the RNA sequence.

setClass("RNAStrings",representation(sequence="character"))
