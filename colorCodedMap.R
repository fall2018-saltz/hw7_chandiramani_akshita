
library("ggplot2")
library("ggmap")


usa <- map_data("usa") # we already did this, but we can do it again
colormap <- ggplot() + geom_polygon(data = mergedData, 
aes(x=long, y = lat, group = group, fill=StateArea)) + coord_fixed(1.3)
