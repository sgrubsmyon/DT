% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/morphr-shiny.R
\name{placeMorphFieldUI}
\alias{placeMorphFieldUI}
\title{Place a morphological field widget into Shiny UI}
\usage{
placeMorphFieldUI(output, id, param_values = NULL,
  value_descriptions = NULL, configurations = NULL, spec_columns = NULL,
  styleFunc = NULL, editable = FALSE, edit_mode = FALSE,
  edit_config_mode = FALSE)
}
\arguments{
\item{output}{The Shiny session's output object (the same as is passed into
the Shiny server function as an argument).}

\item{id}{The unique ID string that the morphological field will have in the
HTML document. This ID can be used with functions like
\code{\link{dataTableProxy}}() to programmatically alter the field/table.}

\item{param_values}{A named list of vectors/lists. The names of the list are
the names of the parameters (columns) in the morphological field. The
vectors/lists contain the possible values that the parameter can have.
If \code{param_values} is NULL (default), then an empty field is created.
Use \code{editable = TRUE} in \code{\link{installMorphField}} to fill the
empty field in the browser.}

\item{value_descriptions}{Optional. Each parameter value in param_values can
have an accompanying (long) description that will be shown as tooltip/popover.
The structure of \code{value_descriptions} is like that of \code{param_values},
but instead of containing parameter values as list elements, the parameter
values must be names whose list elements are the description texts.}

\item{configurations}{Optional. The configurations are a list of the valid
parameter configurations as alternative to the CCM. If the \code{ccm}
is also given, \code{configurations} are ignored. See details.}

\item{spec_columns}{Optional. A list of columns that shall be marked with dark
gray color. These can be "specifying" columns, e.g. a summarizing column like
for the selection of a scenario. These columns can then be seen as "input"
columns: By clicking them, one gets a certain "output" response from
the field, e.g. the parameter values that belong to a specific scenario.
The \code{spec_columns} can also be any other "special" columns.}

\item{styleFunc}{Optional function to style the field. It should accept the field
returned by \code{\link{morphfield}()} (actually a datatable as returned by
\code{\link{datatable}()}), modify it with \code{
field <- field \%>\% \link{formatStyle}(...)
}
or similar, and then return it.}

\item{editable}{Logical, if TRUE, a button is shown to enter the field edit
mode.}
}
\description{
This function only puts the widget into the Shiny UI, i.e. the \code{output}
object, but does not reactivate it. \code{\link{reactivateMorphField}} can be
called afterwards for the reactivation. Alternatively, use
\code{\link{installMorphfield}} to do both at the same time. Use this function
with \code{\link{reactivateMorphField}} to avoid multiple reactivation.
See \code{\link{reactivateMorphField}} for details.
}