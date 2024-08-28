test_that("bindings error works", {
  flourish_correct_bindings <- flourish("scatter") |> bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap")
  expect_no_error(flourish_correct_bindings)
})

test_that("settings error works", {
  flourish_correct_settings <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    set_scatter_details(default_color = "#000000")
  expect_no_error(flourish_correct_settings)
})
