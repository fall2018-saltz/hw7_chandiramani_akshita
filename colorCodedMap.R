
library("ggplot2")
library("ggmap")



head(mergedData)

 us <- map_data("state")
 map.popColor <- ggplot(mergedData, aes(map_id = StateName))  
 map.popColor <- map.popColor + geom_map(map = us, aes(fill=StateArea)) 
 map.popColor <- map.popColor + expand_limits(x = us$long, y = us$lat)
 #map.popColor <- map.popColor+ coord_map() + ggtitle("state population")
#map.popColor 
