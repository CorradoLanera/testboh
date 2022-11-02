test_that("add_w works", {
  # setup
  a <- 1

  # evaluation
  res <- add_2(a)

  # tests
  expect_equal(res, 3)
})
