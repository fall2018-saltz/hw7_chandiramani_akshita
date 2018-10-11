
library("ggplot2")
library("ggmap")




map.popColor <- ggplot(mergedData, aes(map_id = StateName))  
 map.popColor <- map.popColor + geom_map(map = us, aes(fill=july11pop)) 
 map.popColor <- map.popColor + expand_limits(x = us$long, y = us$lat)
 map.popColor <- map.popColor+ coord_map() + ggtitle("state population")
 map.popColor
colormap<-ggplot(data = states) + 
  geom_polygon(aes(x = StateCenterX, y = StateCenterY, fill = StateArea), color = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)
