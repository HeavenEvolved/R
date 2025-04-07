library(palmerpenguins)
library(tidyverse)
library(ggthemes)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)  
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body Mass v/s Flipper Length",
    subtitle = "Dimensions for Amelie, Chinstrap and Gentoo Penguins",
    x = "Flipper Length (in mm)",
    y = "Body Mass (in gm)",
    color = "Species",
    shape = "Species"
  ) +
  scale_color_colorblind()

df <- data.frame(penguins)

# 1.2.5 Exercises

# Question 1
num_rows <- seq_len(df[1, "species"])
num_cols <- length(colnames(df))
print(paste("Num Rows: ", num_rows))
print(paste("Num Cols: ", num_cols))


