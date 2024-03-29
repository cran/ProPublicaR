% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_congressional_statement_by_subjects.R
\name{get_congressional_statement_by_subjects}
\alias{get_congressional_statement_by_subjects}
\title{Get Congressional Statements by Subject}
\usage{
get_congressional_statement_by_subjects(subject, page = 1, myAPI_Key)
}
\arguments{
\item{subject}{Slug version of subject}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
List of returned JSON from endpoint that retrieves the 20 most recent results and supports pagination using multiples of 20.
}
\description{
To get lists of statements published on congressional websites for a particular subject, use the following function.These subjects are not automatically assigned but are manually curated by ProPublica, although they are based on legislative subjects produced by the Library of Congress. We advise using the statement search response for a more complete listing of statements about a keyword or phrase. HTTP Request: GET https://api.propublica.org/congress/v1/statements/subject/{subject}.json
}
\examples{
\dontrun{
get_statement_subjects()$results[[11]][3]
get_congressional_statement_by_subjects(get_statement_subjects()$results[[11]][3])
get_congressional_statement_by_subjects("Central Intelligence Agency")
}
}
