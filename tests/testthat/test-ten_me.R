test_that("ten_me works", {
  # setup
  one <- 1
  two <- 2
  one_string <- "1"
  foo_string <- "foo"

  # evaluation
  res_one <- ten_me(one)
  res_two <- ten_me(two)
  res_one_string <- ten_me(one_string)

  # tests
  expect_equal(res_one, 10)
  expect_equal(res_two, 20)
  expect_equal(res_one_string, 10)

  expect_error(ten_me(foo_string), "must be a numerical object")
})
