
library("ggplot2")
library("ggmap")

us <- map_data("state")
head(mergedData)
 mergedData$StateName <- tolower(mergedData$StateName)
 
map.stateArea <- ggplot(mergedData, aes(map_id = StateName))  
map.stateArea <- map.stateArea+  geom_map(map = us, color=mergedData$StateArea, fill = mergedData$StateArea) 
map.stateArea <- map.stateArea + expand_limits(x = us$lat, y = us$long)
map.stateArea <- map.stateArea + coord_map() +  ggtitle("basic map of continental USA")
 
