#' Components of a pillar
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' `new_pillar_component()` constructs an object of class `"pillar_component"`.
#' It is used by custom [ctl_new_pillar()] methods to create pillars with
#' nonstandard components.
#'
#' @details
#' Objects of class `"pillar"` are internally a named lists of their components.
#' The default components for pillars created by [pillar()] are:
#' `title` (may be missing), `type`, and `data`.
#' Each component is a `"pillar_component"` object.
#'
#' This class captures contents that can be fitted in a simple column.
#' Compound columns are represented by multiple pillar objects, each with their
#' own components.
#'
#' @inheritParams rlang::args_dots_empty
#' @param x A bare list of length one (for `new_pillar_component()`),
#'   or an object with `"width"` and `"min_width"` attributes
#'   (for `pillar_component()`).
#' @param width,min_width Width and minimum width for the new component.
#'   If `min_width` is `NULL`, it is assumed to match `width`.
#' @export
#' @examples
#' new_pillar_component(list(letters[1:3]), width = 1)
#' pillar_component(new_pillar_title("letters"))
#' pillar_component(new_pillar_type(letters))
#' pillar_component(pillar_shaft(letters[1:3]))
new_pillar_component <- function(x, ..., width, min_width = NULL) {
  "!!!!DEBUG new_pillar_component(`v(x)`, `v(width)`, `v(min_width)`)"

  check_dots_empty()
  stopifnot(rlang::is_bare_list(x))
  stopifnot(length(x) == 1)
  stopifnot(is_integerish(width), length(width) == 1L)
  if (!is.null(min_width)) {
    stopifnot(is_integerish(min_width), length(min_width) == 1L)
  }

  structure(
    x,
    width = as.integer(width),
    min_width = as.integer(min_width %||% width),
    class = "pillar_component"
  )
}

#' pillar_component()
#'
#' `pillar_component()` is a convenience helper that wraps the input in a list
#' and extracts width and minimum width.
#'
#' @export
#' @rdname new_pillar_component
pillar_component <- function(x) {
  # FIXME: No longer need to wrap in a list, cell concept abandoned
  new_pillar_component(list(x), width = get_width(x), min_width = get_min_width(x))
}

pillar_get_width <- function(x) {
  as.integer(max(map_int(x, get_width)))
}

pillar_get_min_width <- function(x) {
  as.integer(max(map_int(x, get_min_width)))
}

pillar_format_parts_2 <- function(x, width, is_focus = FALSE, footnote_idx = 1L) {
  formatted <- map(x, function(.x) format(
    .x[[1L]],
    width = min(width, get_width(.x)),
    is_focus = is_focus,
    footnote_idx = footnote_idx
  ))

  align <- attr(formatted[["data"]], "align", exact = TRUE) %||% "left"

  flat <- unlist(formatted)
  extent <- get_extent(flat)
  max_extent <- max(extent)
  if (max_extent > width) {
    flat <- str_trunc(flat, width)
    max_extent <- width
  }
  aligned <- align_impl(flat, max_extent, align, " ", extent)

  list(max_extent = max_extent, aligned = aligned, components = names(x))
}
