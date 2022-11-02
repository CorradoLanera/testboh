double_me <- function(x) {

  x_num <- suppressWarnings(as.numeric(x))

  stopifnot(
    `x must be a numerical object (or one cohercible to that)` =
      x == x_num
  )

  2 * x_num
}
