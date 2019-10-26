#1
library(ISLR)
data(Auto)

#i, ii
glimpse(Auto)

#iii
mean(Auto$mpg)

#iv
max(Auto$horsepower)

#v
library(ggplot2)
ggplot(data = Auto, mapping = aes(x = mpg)) +
    geom_histogram(bins = 6)

#vi

ggplot(data = Auto, mapping = aes(x = factor(origin), y = acceleration)) +
    geom_boxplot()