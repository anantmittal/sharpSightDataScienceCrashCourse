library(ggplot2)
library(dplyr)
#-------------------------------
# SUMMARIZE:
# aggregate your data
#-------------------------------
df.diamonds_ideal <- filter(diamonds, cut=="Ideal")

df.diamonds_ideal <- select(df.diamonds_ideal, carat, cut, price, color, clarity)

df.diamonds_ideal <- mutate(df.diamonds_ideal, price_per_carat = price/carat)
summarize(df.diamonds_ideal, avg_price = mean(price, na.rm = TRUE) )
#
#
