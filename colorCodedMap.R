
library("ggplot2")
library("ggmap")

states <- map_data("mergedData")
head(states)
colormap<-ggplot(data = states) + 
  geom_polygon(aes(x = StateCenterX, y = StateCenterY, fill = StateArea), color = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)
