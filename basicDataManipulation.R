library(dplyr)

head(diamonds)

df.diamonds_ideal <- filter(diamonds, cut=="Ideal")