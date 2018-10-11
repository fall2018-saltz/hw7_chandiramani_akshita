
library("ggplot2")
library("ggmap")



head(mergedData)

usa <- map_data("usa") # we already did this, but we can do it again
map.popColor<-ggplot() + geom_polygon(data = usa, aes(x=long, y = lat, group = group)) + 
  coord_fixed(1.3)
