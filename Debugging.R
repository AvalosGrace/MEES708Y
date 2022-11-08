#####################################################################
#####################################################################
# Debugugging
as.Date(c("2011-04-05", 35))

x <- rep(NA, nrow(swiss))
for (i in 1:nrow(swiss)) {
  m = lm(unlist(swiss[i,]) ~ 1)
  x[i] = m$coefficients[1]
}
x

#Warning
tmp <- log(-pi)
is.na(tmp)

library(dplyr)
swiss %>%
  filter(!is.na(Agriculture))

# Error
lm(x~y) #we do not have x and y in our environment


#### TOOLS
traceback()

mean(x)
traceback()

# browser() and debug()
source('MyFunctions.R')

debug(mean)
mean(x)
debug(mean)

library(funtimes)

debug(funtimes::ARest)