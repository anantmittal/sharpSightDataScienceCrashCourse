library(ggplot2)
library(dplyr)

head(diamonds)

df.diamonds_ideal <- filter(diamonds, cut=="Ideal")

df.diamonds_ideal <- select(df.diamonds_ideal, carat, cut, price, color, clarity)

df.diamonds_ideal <- mutate(df.diamonds_ideal, price_per_carat = price/carat)