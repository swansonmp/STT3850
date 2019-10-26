library(nycflights13)
library(ggplot2)
library(dplyr)

data(flights)

all_american_flights <- flights %>%
    filter(carrier == "AA")

#
ggplot(data = all_american_flights, aes(x = distance, y = air_time)) + geom_point(alpha = 0.1)
#