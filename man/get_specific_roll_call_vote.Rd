% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_specific_roll_call_vote.R
\name{get_specific_roll_call_vote}
\alias{get_specific_roll_call_vote}
\title{Get a Specific Roll Call Vote}
\usage{
get_specific_roll_call_vote(
  congress,
  chamber = c("house", "senate"),
  session_number,
  roll_call_number,
  page = 1,
  myAPI_Key
)
}
\arguments{
\item{congress}{102-116 for House, 80-116 for Senate}

\item{chamber}{house or senate}

\item{session_number}{1 or 2, depending on year (1 is odd-numbered years, 2 is even-numbered years)
passed (latest_major_action_date), enacted (enacted), vetoed (vetoed).}

\item{roll_call_number}{integer}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
List of returned JSON from endpoint that retrieves a specific roll-call vote
s
}
\description{
To get a specific roll-call vote, including a complete list of member positions. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/{chamber}/sessions/{session-number}/votes/{roll-call-number}.json
}
\examples{
\dontrun{
get_specific_roll_call_vote(115, 'senate', 1, 17L)
}
}
