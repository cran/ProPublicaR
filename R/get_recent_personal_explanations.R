#' Get Recent Personal Explanations
#'
#' Lawmakers, mostly in the House but also in the Senate, can make personal explanations for missed or mistaken votes in the Congressional Record. These explanations can refer to a single vote or to multiple votes. To get lists of personal explanations, use the following URI structure. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/explanations.json
#'
#' @param congress 		101-115
#' @inheritParams get_new_members
#'
#' @return List of returned JSON from endpoint that retrieves the 20 most recent results in the specified Congress
#' @export
#'
#' @examples
#' \donttest{
#' get_recent_personal_explanations(114)
#' }
get_recent_personal_explanations <- function(congress, myAPI_Key){
  API = 'congress'
  if(!congress %in% 101:115){
    stop("Incorrect congress, should be 101-115")
  }
  query <- sprintf("%s/explanations.json", congress)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}