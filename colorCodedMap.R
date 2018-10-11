
library("ggplot2")
library("ggmap")




map.popColor <- ggplot(mergedData, aes(map_id = StateName))  
us <- map_data("state")
 map.popColor <- map.popColor + geom_map(map = us, aes(fill=StateArea)) 
 
