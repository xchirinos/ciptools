context("infrastructure")

td <- tempdir()
unlink(file.path(td, "R"))


test_that("check R directory", {
  expect_that(has_r(), is_false() )
  expect_that(has_r(td), is_false() )
  
  dir.create(file.path(td, "R"))
  expect_that(has_r(td), is_true() )
})

test_that("chck DESCRIPTION file", {
  expect_that(has_description(td), is_false())
  devtools::create_description(td)
  expect_that(has_description(td), is_true())
})
