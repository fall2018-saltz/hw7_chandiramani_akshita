
library("ggplot2")
library("ggmap")

us <- map_data("state")
head(mergedData)
 mergedData$StateName <- tolower(mergedData$StateName)
map.simple <- ggplot(mergedData, aes(map_id = StateName))  
map.simple <- map.simple+  geom_map(map = us, fill="white", color="black") 
#map.simple <- map.simple + expand_limits(x = us$lat, y = us$long)
 #map.simple <- map.simple + coord_map() +  ggtitle("basic map of continental USA")
 
