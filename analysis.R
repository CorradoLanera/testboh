library(tidyverse)
library(here)


here("R") |>
  list.files(pattern = "\\.R", full.names = TRUE) |>
  walk(source)




db_raw <- here("data-raw/my_data.csv") |>
  read_csv()


db <- db_raw |>
  mutate(
    tot = a + b + c,
    num_string = "1",
    double_tot = double_me(tot),
    double_str = double_me(num_string),
    ten_tot = ten_me(tot)
  )

plot_res <- ggplot(db, aes(a, tot)) +
  geom_point() +
  labs(
    title = "A super cool an unuseful plot",
    x = "column A",
    y = "computed TOT"
  )
plot_res



here("output/cool_plot.png") |>
  ggsave(plot_res)
