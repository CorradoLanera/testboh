pkgs <- c(
  "checkmate", "devtools", "here", "testthat", "tidyverse", "usethis"
)

install.packages(pkgs)
renv::status()
# renv::snapshot()


usethis::use_description()
usethis::use_testthat()

usethis::use_build_ignore(c("output", "dev"))
