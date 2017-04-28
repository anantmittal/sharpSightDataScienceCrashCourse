library(ggplot2)
ggplot(data = mtcars, aes(x = wt, y = mpg)) + geom_point()

#~~~~~~~~~~~~~~~~~~~~~~~~~~
# Build model using train()
#~~~~~~~~~~~~~~~~~~~~~~~~~~
library(caret)
model.mtcars_lm <- train(mpg ~ wt
                         ,data = mtcars
                         ,method = "lm"
)

#~~~~~~~~~~~~~~~~~~~~~~~~~~
# Retrieve coefficients for
# - slope
# - intercept
#~~~~~~~~~~~~~~~~~~~~~~~~~~
coef.icept <- coef(model.mtcars_lm$finalModel)[1]
coef.slope <- coef(model.mtcars_lm$finalModel)[2]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Plot scatterplot and regression line
# using ggplot()
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_abline(slope = coef.slope, intercept = coef.icept, color = "red")


