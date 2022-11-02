library(tidyverse)
library(here)


here("R") |>
  list.files(pattern = "\\.R", full.names = TRUE) |>
  walk(source)



db_raw <- here("data-raw/my_data.csv") |>
  read_csv()

testboh <- db_raw |>
  mutate(
    tot = a + b + c,
    num_string = "1",
    double_tot = double_me(tot),
    double_str = double_me(num_string),
    ten_tot = ten_me(tot)
  )


# usethis::use_data(testboh)
write_rds(testboh, here("data/testboh.rds"))
