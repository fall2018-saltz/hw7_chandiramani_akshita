
library("ggplot2")
library("ggmap")

states <- map_data("state")
colormap<-ggplot(data = states) + 
  geom_polygon(aes(x = long, y = lat, fill = area, group = group), color = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)
