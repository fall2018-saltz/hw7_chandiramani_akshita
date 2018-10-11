
library("ggplot2")
library("ggmap")

us <- map_data("state")
head(mergedData)
 mergedData$StateName <- tolower(mergedData$StateName)
 
map.simple <- ggplot(mergedData, aes(map_id = StateName))  
map.simple <- map.simple+  geom_map(map = us, fill=mergedData$StateArea, color="black") 
map.simple <- map.simple + expand_limits(x = mergedData$StateCenterX+5, y = mergedData$StateCenter+5Y)
map.simple <- map.simple + coord_map() +  ggtitle("basic map of continental USA")
 
