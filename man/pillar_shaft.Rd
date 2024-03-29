% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shaft-.R
\name{pillar_shaft}
\alias{pillar_shaft}
\alias{print.pillar_shaft}
\alias{format.pillar_shaft}
\alias{pillar_shaft.logical}
\alias{pillar_shaft.numeric}
\alias{pillar_shaft.Date}
\alias{pillar_shaft.POSIXt}
\alias{pillar_shaft.character}
\alias{pillar_shaft.glue}
\alias{pillar_shaft.list}
\alias{pillar_shaft.factor}
\alias{pillar_shaft.AsIs}
\alias{pillar_shaft.default}
\title{Column data}
\usage{
pillar_shaft(x, ...)

\method{print}{pillar_shaft}(x, width = NULL, ...)

\method{format}{pillar_shaft}(x, width, ...)

\method{pillar_shaft}{logical}(x, ...)

\method{pillar_shaft}{numeric}(x, ..., sigfig = NULL)

\method{pillar_shaft}{Date}(x, ...)

\method{pillar_shaft}{POSIXt}(x, ...)

\method{pillar_shaft}{character}(x, ..., min_width = NULL)

\method{pillar_shaft}{glue}(x, ..., min_width = NULL, na_indent = 0L, shorten = NULL)

\method{pillar_shaft}{list}(x, ...)

\method{pillar_shaft}{factor}(x, ...)

\method{pillar_shaft}{AsIs}(x, ...)

\method{pillar_shaft}{default}(x, ...)
}
\arguments{
\item{x}{A vector to format}

\item{...}{Arguments passed to methods.}

\item{width}{Width for printing and formatting.}

\item{sigfig}{Deprecated, use \code{\link[=num]{num()}} or \code{\link[=set_num_opts]{set_num_opts()}} on the data instead.}

\item{min_width}{Deprecated, use \code{\link[=char]{char()}} or \code{\link[=set_char_opts]{set_char_opts()}} on the data instead.}

\item{na_indent}{Indentation of \code{NA} values.}

\item{shorten}{How to abbreviate the data if necessary:
\itemize{
\item \code{"back"} (default): add an ellipsis at the end
\item \code{"front"}: add an ellipsis at the front
\item \code{"mid"}: add an ellipsis in the middle
\item \code{"abbreviate"}: use \code{\link[=abbreviate]{abbreviate()}}
}}
}
\description{
Internal class for formatting the data for a column.
\code{pillar_shaft()} is a coercion method that must be implemented
for your data type to display it in a tibble.

This class comes with a default method for \code{\link[=print]{print()}} that calls \code{\link[=format]{format()}}.
If \code{print()} is called without \code{width} argument, the natural width will be
used when calling \code{format()}.
Usually there's no need to implement this method for your subclass.

Your subclass must implement \code{format()}, the default implementation just
raises an error.
Your \code{format()} method can assume a valid value for the \code{width} argument.
}
\details{
The default method will currently format via \code{\link[=format]{format()}},
but you should not rely on this behavior.
}
\examples{
pillar_shaft(1:3)
pillar_shaft(1.5:3.5)
pillar_shaft(NA)
pillar_shaft(c(1:3, NA))
}
