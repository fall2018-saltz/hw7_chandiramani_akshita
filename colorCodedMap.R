
library("ggplot2")
library("ggmap")

us <- map_data("state")
us
head(mergedData)
 mergedData$StateName <- tolower(mergedData$StateName)
 
map.stateArea <- ggplot(mergedData, aes(map_id = StateName))  
map.stateArea <- map.stateArea+  geom_map(map = us, aes(fill = mergedData$StateArea, color=mergedData$StateArea)) 
map.stateArea <- map.stateArea + expand_limits(x = us$long, y = us$lat)
map.stateArea <- map.stateArea + coord_map() +  ggtitle("basic map of continental USA")
 
map.murderRate <- ggplot(mergedData, aes(map_id = StateName))  
map.murderRate <- map.murderRate+  geom_map(map = us, aes(color=mergedData$Murder, fill = mergedData$Murder)) 
map.murderRate <- map.murderRate + expand_limits(x = mergedData$StateCenterX, y = mergedData$StateCenterY)
map.murderRate <- map.murderRate + coord_map() +  ggtitle("basic map of continental USA")
 
 
map.murderRate + geom_point(aes(x = mergedData$StateCenterX, y = mergedData$StateCenterY, size = mergedData$population), color='white', size = 100)
