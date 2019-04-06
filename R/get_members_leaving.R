#' Get Members Leaving Office
#' 
#' To get a list of members who have left the Senate or House or have announced plans to do so. HTTP Request: GET https://api.propublica.org/congress/v1/{congress}/{chamber}/members/leaving.json
#'
#' @param congress 111-115
#' @param chamber house or senate
#' @inheritParams get_new_members
#'
#' @return  List of returned JSON from endpoint that retrieves a list of members who have left the Senate or House
#' @export
#'
#' @examples
#' \donttest{
#' get_members_leaving(115, 'house')
#' }
get_members_leaving <- function(congress, chamber, myAPI_Key){
  API = 'congress'
  if(!chamber%in%c('house','senate'))
    stop('Incorrect Chamber. (Should be \'house\' or \'senate\', lowercase.')
  if(!congress%in% 111:115)
    stop('Incorrect congress. Should be 111 to 115')
  query <- sprintf("%s/%s/members/leaving.json", congress, chamber)
  pp_query(query, API, myAPI_Key = myAPI_Key)
}