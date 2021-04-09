test_that("The app runs", {
  app = shinytest::ShinyDriver$new(system.file("app", package = "appinabox"))
  expect_equal(app$getTitle(), "Praise")
  app$stop()
})
