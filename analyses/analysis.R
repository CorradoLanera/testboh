library(tidyverse)
library(here)


# load(here("data/testboh.rda"))
pincopallino <- read_rds(here("data/testboh.rds"))

plot_res <- ggplot(pincopallino, aes(a, tot)) +
  geom_point() +
  labs(
    title = "A super cool an unuseful plot",
    x = "column A",
    y = "computed TOT"
  )
plot_res



here("output/cool_plot.png") |>
  ggsave(plot_res)
