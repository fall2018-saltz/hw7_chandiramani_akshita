
library("ggplot2")
library("ggmap")


usa <- map_data("usa") # we already did this, but we can do it again
colormap <- ggplot(mergedData, aes(map_id = usa)) +
    geom_map(aes(fill = mergedData$StateArea), map = usa) +
    expand_limits(x = mergedData$StateCenterX, y = mergedData$StateCenterY)
