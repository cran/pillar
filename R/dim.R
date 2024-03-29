#' Format dimensions
#'
#' Multi-dimensional objects are formatted as `a x b x ...`, for vectors the
#' length is returned.
#'
#' @param x The object to format the dimensions for
#'
#' @export
#' @examples
#' dim_desc(1:10)
#' dim_desc(Titanic)
dim_desc <- function(x) {
  dim <- dim2(x)
  format_dim <- big_mark(dim)
  format_dim[is.na(dim)] <- "??"
  paste0(format_dim, collapse = spaces_around(mult_sign()))
}

# https://github.com/r-lib/vctrs/pull/467
dim2 <- function(x) {
  dim(x) %||% vec_size(x)
}

mult_sign <- function() {
  symbol$times
}

spaces_around <- function(x) {
  paste0(" ", x, " ")
}

# function for the thousand separator,
# returns "," unless it's used for the decimal point, in which case returns "."
big_mark <- function(x) {
  # The thousand separator,
  # "," unless it's used for the decimal point, in which case "."
  mark <- if (identical(getOption("OutDec"), ",")) "." else ","
  ret <- formatC(x, big.mark = mark, format = "d", preserve.width = "individual")
  ret[is.na(x)] <- "??"
  ret
}
