
library("ggplot2")
library("ggmap")

us <- map_data("state")
us
head(mergedData)
 mergedData$StateName <- tolower(mergedData$StateName)
 
#3)	Create a color coded map, based on the area of the state 
map.stateArea <- ggplot(mergedData, aes(map_id = StateName))  
map.stateArea <- map.stateArea+  geom_map(map = us, aes(fill = mergedData$StateArea, color=mergedData$StateArea)) 
map.stateArea <- map.stateArea + expand_limits(x = us$long, y = us$lat)
map.stateArea <- map.stateArea + coord_map() +  ggtitle("Map of continental USA color coded by Area")
 
#4)	Repeat step B, but color code the map based on the murder rate of each state.
map.murderRate <- ggplot(mergedData, aes(map_id = StateName))  
map.murderRate <- map.murderRate+  geom_map(map = us, aes(color=mergedData$Murder, fill = mergedData$Murder)) 
map.murderRate <- map.murderRate + expand_limits(x = us$long, y = us$lat)
map.murderRate <- map.murderRate + coord_map() +  ggtitle("Map of continental USA color coded by Murder")
 
#Show the population as a circle per state (the larger the population, the larger the circle)
#using the location defined by the center of each state
map.murderRate <- map.murderRate + geom_point(x = mergedData$StateCenterX, y= mergedData$StateCenterY,
color="white", aes(size = mergedData$population))

#6)	Repeat step C, but only show the states in the north east
map.Zoomed <- ggplot(mergedData, aes(map_id = StateName))  
map.Zoomed <- map.Zoomed+  geom_map(map = us, aes(color=mergedData$Murder, fill = mergedData$Murder)) 
map.Zoomed <- map.Zoomed + expand_limits(x = us$long, y = us$lat)
map.Zoomed <- map.Zoomed + coord_map(xlim = c(-64,-84),ylim = c(30.71,50.71)) +  ggtitle("Map of North East USA")
map.Zoomed <- map.Zoomed + geom_point(x = mergedData$StateCenterX, y= mergedData$StateCenterY,
color="white", aes(size = mergedData$population))


