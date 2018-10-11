
library("ggplot2")
library("ggmap")


usa <- map_data("usa") # we already did this, but we can do it again
colormap <- ggplot(mergedData, aes(map_id = state)) +
    geom_map(aes(fill = StateArea), map = state) +
    expand_limits(x = mergedData$StateCenterX, y = mergedData$StateCenterY)
