
library("ggplot2")
library("ggmap")


usa <- map_data("usa") # we already did this, but we can do it again
colormap <- ggplot(mergedData) +
    geom_map(map = usa)
