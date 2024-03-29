% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_recent_congressional_statements_by_date.R
\name{get_recent_congressional_statements_by_date}
\alias{get_recent_congressional_statements_by_date}
\title{Get Congressional Statements by Date}
\usage{
get_recent_congressional_statements_by_date(
  year,
  month,
  day,
  page = 1,
  myAPI_Key
)
}
\arguments{
\item{year}{YYYY format}

\item{month}{MM format}

\item{day}{DD format}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
List of returned JSON from endpoint that retrieves the 20 most recent results and supports pagination using multiples of 20.
}
\description{
To get lists of statements published on congressional websites on a particular date, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/statements/date/{date}.json
}
\examples{
\dontrun{
get_recent_congressional_statements_by_date(2017, '05', '08')
}
}
