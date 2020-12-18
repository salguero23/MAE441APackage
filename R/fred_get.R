#' Fred API
#'
#' @param api.key A personal API key is necessary in accessing the Fred API.
#' @param series.id A series code that is required in selecting the desired data.
#' @param obs.start A parameter that selects the desired start time for a series.
#'
#' @return
#' @export
#'
#' @examples
#' fred.get('YOUR API KEY','GDPC1','2020-01-01')
fred.get = function(api.key, series.id, obs.start){
  URL = 'https://api.stlouisfed.org/fred/series/observations'
  parameters = paste(
    '?series_id=', series.id,
    '&api_key=', api.key,
    '&file_type=json',
    '&observation_start=', obs.start,
    sep='')

  PATH = paste(URL, parameters, sep='')
  initialquery = fromJSON(PATH)

  df = initialquery$observations
  rownames(df) = df$date
  df$value = as.numeric(df$value)
  df = df[c('value')]

  return(df)
}
