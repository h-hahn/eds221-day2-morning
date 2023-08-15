# data wrangling and viz

library(tidyverse)
library(here)

plants <- read_csv(here("data", "power_plants.csv")) %>%
  clean_names()

alabama_plants <- plants %>% filter(state_name == "Alabama")

alabama_plot <- ggplot(alabama_plants, aes(x = install_mw, y = total_mw)) +
  geom_point() +
  theme_light()
