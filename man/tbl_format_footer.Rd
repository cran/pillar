% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tbl-format-footer.R
\name{tbl_format_footer}
\alias{tbl_format_footer}
\title{Format the footer of a tibble}
\usage{
tbl_format_footer(x, setup, ...)
}
\arguments{
\item{x}{A tibble-like object.}

\item{setup}{A setup object returned from \code{\link[=tbl_format_setup]{tbl_format_setup()}}.}

\item{...}{These dots are for future extensions and must be empty.}
}
\value{
A character vector.
}
\description{
For easier customization, the formatting of a tibble is split
into three components: header, body, and footer.
The \code{tbl_format_footer()} method is responsible for formatting the footer
of a tibble.

Override or extend this method if you need to change the appearance
of the footer.
The default implementation adds information about rows and columns
that are not shown in the body.
}