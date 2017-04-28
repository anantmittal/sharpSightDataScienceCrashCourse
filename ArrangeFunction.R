
library(ggplot2)
library(dplyr)
#------------------------
# ARRANGE: sort your data
#------------------------
# create simple data frame
# containing disordered numeric variable
df.disordered_data <- data.frame(num_var = c(2,3,5,1,4))
head(df.disordered_data)
# these are out of order
#
#
#
# now we'll order them with arrange()
arrange(df.disordered_data, num_var)
#
#
#
# we can also put them in descending order
arrange(df.disordered_data, desc(num_var))
#
#
#
#
