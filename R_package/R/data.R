#' Flourish template API documentation
#'
#' A data set containing template metadata about Flourish graphs
#'
#' @format A data frame with 57 rows and 3 columns:
#' \describe{
#'   \item{template_name}{Template name. Found in API documentation: \url{https://app.flourish.studio/@flourish}. }
#'   \item{chart_type}{Chart type. One template may have multiple chart types.}
#'   \item{url}{URL for template API documentation.}
#' }
#' @return A data frame
#' @examples flourish_api_documentation
#' @source \url{https://flourish.studio/index.html}
"flourish_api_documentation"

#' Gapminder data
#'
#' A data set containing Gapminder data used for vignettes
#'
#' @format A data frame with 1704 rows and 6 columns:
#' \describe{
#'   \item{country}{Country name.}
#'   \item{continent}{Continent name.}
#'   \item{year}{Year data was collected.}
#'   \item{lifeExp}{Life expectancy.}
#'   \item{pop}{Population size.}
#'   \item{gdpPercap}{GDP per capita.}
#' }
#' @return A data frame
#' @examples gapminder
#' @source \url{https://www.gapminder.org/}
"gapminder"
