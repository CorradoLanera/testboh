test_that("double_me works", {
  # setup
  one <- 1
  two <- 2
  one_string <- "1"
  foo_string <- "foo"

  # evaluation
  res_one <- double_me(one)
  res_two <- double_me(two)
  res_one_string <- double_me(one_string)

  # tests
  res_one |> expect_equal(2)
  res_two |> expect_equal(4)
  res_one_string |> expect_equal(2)

  double_me(foo_string) |>
    expect_error("must be a numerical object")
})
