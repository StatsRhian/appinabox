test_that("The app runs", {
  skip_on_os(c("windows", "mac"))
  app = shinytest::ShinyDriver$new(system.file("app", package = "appinabox"))
  expect_equal(app$getTitle(), "Praise")
  app$stop()
})
