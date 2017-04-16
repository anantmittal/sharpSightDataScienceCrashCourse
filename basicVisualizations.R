library(ggplot2)

ggplot(data=diamonds, aes(x = cut)) + geom_bar()

ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()


df.dummy_data <- data.frame(dummy_metric = cumsum(1:20), date = seq.Date(as.Date("1980-01-01"), by="1 year", length.out = 20 ))

ggplot(data = df.dummy_data, aes(x = date, y = dummy_metric)) + geom_line()

