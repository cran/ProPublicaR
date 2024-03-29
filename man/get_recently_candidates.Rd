% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_recently_candidates.R
\name{get_recently_candidates}
\alias{get_recently_candidates}
\title{Get Top 20 Candidates in Specific Financial Category

HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/candidates/new (https://www.propublica.org/datastore/apis)}
\usage{
get_recently_candidates(cycle = 2018, page = 1, myAPI_Key)
}
\arguments{
\item{cycle}{The election cycle: Four-digit even-numbered year between 2010 and 2018}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
List of the most recently added FEC candidates for a given campaign cycle from the campaign-finance API from ProPublica.
}
\description{
Get Top 20 Candidates in Specific Financial Category

HTTP Request: GET https://api.propublica.org/campaign-finance/v1/{cycle}/candidates/new (https://www.propublica.org/datastore/apis)
}
\examples{
\dontrun{
get_recently_candidates(2016)
}
}
