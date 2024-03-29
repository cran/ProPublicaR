% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_candidates_in_race.R
\name{get_candidates_in_race}
\alias{get_candidates_in_race}
\title{Get Candidates in Race}
\usage{
get_candidates_in_race(
  state,
  chamber,
  district,
  cycle = 2018,
  return_value = c("results", "query"),
  page = 1,
  myAPI_Key
)
}
\arguments{
\item{state}{State abbreviation}

\item{chamber}{house or senate}

\item{district}{house district}

\item{cycle}{The election cycle in question, e.g. 2018}

\item{return_value}{should results be retrieved, or query string returned.}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
The result of the API call (list), unless \code{return_value=query} (mostly for debugging), in which case the query string is returned.
}
\description{
Get Candidates in Race
}
\examples{
\dontrun{
get_candidates_in_race('MI', 'house', 11)
}
}
