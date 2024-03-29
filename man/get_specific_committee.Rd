% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_specific_committee.R
\name{get_specific_committee}
\alias{get_specific_committee}
\title{Get a Specific Committee}
\usage{
get_specific_committee(congress, chamber, committee_id, page = 1, myAPI_Key)
}
\arguments{
\item{congress}{110-116}

\item{chamber}{house, senate or joint}

\item{committee_id}{Committee abbreviation, for example HSAG. Use the full committees response to find abbreviations.}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
List of returned JSON from endpoint that retrieves the 20 most recent results and supports pagination using multiples of 20.
}
\description{
To get information about a single Senate or House committee, including the members of that committee, use the following function. The committee ids can be found in the committee list responses. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/{chamber}/committees/{committee-id}.json
}
\examples{
\dontrun{
get_specific_committee(115, "senate",
lists_of_committees(115, "senate")$results[[1]]$committees[[1]]$id)

get_specific_committee(115, "senate", "SSAF")
}
}
