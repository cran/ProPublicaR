% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_recent_votes.R
\name{get_recent_votes}
\alias{get_recent_votes}
\title{Get Recent Votes}
\usage{
get_recent_votes(chamber, page = 1, myAPI_Key)
}
\arguments{
\item{chamber}{house, senate or both.}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
List of returned JSON from endpoint that retrieves  the 20 most recent votes from the House, Senate or both chambers
}
\description{
You can get recent votes from the House, Senate or both chambers using this request. This request returns the 20 most recent results, sorted by date and roll call number, and you can paginate through votes using the offset querystring parameter that accepts multiples of 20. HTTP Request: GET https://api.propublica.org/congress/v1/{chamber}/votes/recent.json
}
\examples{
\dontrun{
get_recent_votes('senate')
}
}
