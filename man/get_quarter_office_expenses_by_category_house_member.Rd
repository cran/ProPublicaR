% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/get_quarter_office_expenses_by_category_house_member.R
\name{get_quarter_office_expenses_by_category_house_member}
\alias{get_quarter_office_expenses_by_category_house_member}
\title{Get Quarterly Office Expenses by Category for a Specific House Member}
\usage{
get_quarter_office_expenses_by_category_house_member(
  member_id,
  category,
  page = 1,
  myAPI_Key
)
}
\arguments{
\item{member_id}{The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.}

\item{category}{travel or personnel or rent-utilities or other-services or supplies or franked-mail or printing or equipment or total.}

\item{page}{Results come in batches of 20. The page parameter specifies which one to retrieve.}

\item{myAPI_Key}{API key from Propublica To use the congress API, you must sign up for an API key.}
}
\value{
the amount a given lawmaker spent during a specified year and quarter in a specified category
}
\description{
The House of Representatives publishes quarterly reports detailing official office expenses by lawmakers. The Congress API has data beginning in the third quarter of 2009.  HTTP Request: GET https://api.propublica.org/congress/v1/members/{member-id}/office_expenses/{year}/{quarter}.json
}
\examples{
\dontrun{
get_quarter_office_expenses_by_category_house_member('A000374', 'travel')
}
}
