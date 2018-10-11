
library("ggplot2")
library("ggmap")

states_map <- map_data("usa")
  ggplot(mergedData, aes(map_id = state)) +
    geom_map(aes(fill = StateArea), map = states_map) +
    expand_limits(x = states_map$long, y = states_map$lat)
