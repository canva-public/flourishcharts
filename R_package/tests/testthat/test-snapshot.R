test_that("snapshot with default parameters works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot()

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$format, "png")
  expect_equal(flourish_chart$x$state$snapshot$download, TRUE)
  expect_equal(flourish_chart$x$state$snapshot$filename, "Flourish API Image")
  expect_equal(flourish_chart$x$state$snapshot$scale, 1)
})

test_that("snapshot with png format works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(format = "png")

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$format, "png")
})

test_that("snapshot with svg format works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(format = "svg")

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$format, "svg")
})

test_that("snapshot with jpeg format works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(format = "jpeg")

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$format, "jpeg")
})

test_that("snapshot with jpg format works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(format = "jpg")

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$format, "jpg")
})

test_that("snapshot with invalid format errors", {
  expect_error(
    flourish("scatter") |>
      bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
      snapshot(format = "gif"),
    "`format` must be one of: c\\('png', 'svg', 'jpeg', 'jpg'\\)"
  )
})

test_that("snapshot with custom filename works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(filename = "my_custom_chart")

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$filename, "my_custom_chart")
})

test_that("snapshot with download = FALSE works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(download = FALSE)

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$download, FALSE)
})

test_that("snapshot with invalid download errors", {
  expect_error(
    flourish("scatter") |>
      bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
      snapshot(download = "yes"),
    "`download` must be one of: c\\(TRUE, FALSE\\)"
  )
})

test_that("snapshot with custom scale works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(scale = 2)

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$scale, 2)
})

test_that("snapshot with all custom parameters works", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    snapshot(
      format = "svg",
      filename = "test_export",
      download = FALSE,
      scale = 3
    )

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$snapshot$format, "svg")
  expect_equal(flourish_chart$x$state$snapshot$filename, "test_export")
  expect_equal(flourish_chart$x$state$snapshot$download, FALSE)
  expect_equal(flourish_chart$x$state$snapshot$scale, 3)
})

test_that("snapshot preserves existing chart settings", {
  flourish_chart <- flourish("scatter") |>
    bind_scatter_data(gapminder, x = "lifeExp", y = "gdpPercap") |>
    set_scatter_details(default_color = "#FF0000") |>
    snapshot(format = "png")

  expect_no_error(flourish_chart)
  expect_equal(flourish_chart$x$state$default_color, "#FF0000")
  expect_equal(flourish_chart$x$state$snapshot$format, "png")
})
