#' Get Recent Committee Hearings
#'
#' To get a list of 20 upcoming Senate or House committee meetings, use the following function. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/committees/hearings.json
#'
#' @param congress 114-115
#' @inheritParams get_new_members
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent results and supports pagination using multiples of 20.
#' @export
#'
#' @examples
#' \donttest{
#' get_recent_committee_hearing(115)
#' }
get_recent_committee_hearing <- function(congress, myAPI_Key){
  API = 'congress'
  if(!congress %in% 114:115){
    stop("Incorrect congress, should be 110 until 115")
  }
  query <- sprintf("%s/committees/hearings.json", congress)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}