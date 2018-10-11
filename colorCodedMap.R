
library("ggplot2")
library("ggmap")


usa <- map_data("usa") # we already did this, but we can do it again
colormap <- ggplot() + geom_map(data = mergedData, 
aes(x=StateCenterX, y = StateCenterY, fill=StateArea)) + coord_fixed(1.3)
