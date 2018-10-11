
library("ggplot2")
library("ggmap")

states_map <- map_data("usa")
  ggplot(mergedData, aes(map_id = "usa")) +
    geom_map(aes(fill = StateArea), map = states_map) +
    expand_limits(x = mergedData$StateCenterX, y = StateCenterX)
