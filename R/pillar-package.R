#' @aliases NULL pillar-package
#'
#' @description
#' `r lifecycle::badge("stable")`
#'
#' Formats tabular data in columns or rows
#' using the full range of colours provided by modern terminals.
#' Provides various generics for making every aspect of the display customizable.
#'
#' @seealso
#' - [pillar()] for formatting a single column,
#' - [print.tbl()] for formatting data-frame-like objects,
#' - [pillar_options] for a list of package options.
#'
#' @examplesIf rlang::is_installed("tibble")
#' pillar(1:3)
#' pillar(c(1, 2, 3))
#' pillar(factor(letters[1:3]), title = "letters")
#' tbl_format_setup(tibble::as_tibble(mtcars), width = 60)
"_PACKAGE"
