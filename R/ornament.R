#' Helper to define the contents of a pillar
#'
#' This function is useful if your data renders differently depending on the
#' available width. In this case, implement the [pillar_shaft()] method for your
#' class to return a subclass of "pillar_shaft" and have the [format()] method
#' for this subclass call `new_ornament()`. See the implementation of
#' `pillar_shaft.numeric()` and `format.pillar_shaft_decimal()` for an example.
#'
#' @param x A character vector with formatting,
#'   can use ANYI styles e.g provided by the \pkg{cli} package.
#'
#' @param width An optional width of the resulting pillar, computed from `x` if
#'   missing
#' @param align Alignment, one of `"left"` or `"right"`
#'
#' @export
#' @examples
#' new_ornament(c("abc", "de"), align = "right")
new_ornament <- function(x, width = NULL, align = NULL) {
  if (is.null(width)) {
    width <- get_max_extent(x)
  }

  ret <- structure(
    x,
    align = align,
    class = "pillar_ornament"
  )
  ret <- set_width(ret, width)
  ret
}

#' @export
print.pillar_ornament <- function(x, ...) {
  writeLines(style_bold("<pillar_ornament>"))
  writeLines(format(x, ...))
  invisible(x)
}

#' @export
format.pillar_ornament <- function(x, width = NULL, ...) {
  align <- attr(x, "align", exact = TRUE)
  align(x, width = width %||% get_width(x), align = align)
}
