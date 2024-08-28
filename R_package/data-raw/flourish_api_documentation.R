## code to prepare `flourish_api_documentation` dataset goes here

flourish_api_documentation_raw <- read.csv("../python_package/flourishcharts/data/flourish_api_documentation.csv")
flourish_api_documentation <- flourish_api_documentation_raw[c("template_name", "chart_type", "url")]
usethis::use_data(flourish_api_documentation, overwrite = TRUE)

templates_private <- flourish_api_documentation_raw[c("template_name", "template_id", "template_version", "chart_type")]
usethis::use_data(templates_private, overwrite = TRUE, internal = TRUE)

# gapminder_raw <- read.csv("inst/extdata/gapminder.csv")
# gapminder <- gapminder_raw[c("country", "continent", "year", "lifeExp", "pop", "gdpPercap")]
# usethis::use_data(gapminder, overwrite = FALSE)
