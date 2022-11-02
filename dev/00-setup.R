pkgs <- c(
  "checkmate", "devtools", "here", "testthat", "tidyverse", "usethis"
)

install.packages(pkgs)
renv::status()
# renv::snapshot()


usethis::use_description()
