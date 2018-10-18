

#1)	Read in the census dataset and the USArrests and merge them
mergedData <- merge(arrests, cleanDfStates, by="row.names", all=TRUE)

#Remove additional States column from merged table
#and rename to StateName
mergedData <- mergedData[,-c(6)]
colnames(mergedData)[1] <- "StateName"
state.center
mergedData <- mergedData[-c(9),]
mergedData$StateName <- state.name
mergedData$StateArea <- state.area
mergedData$StateCenterX <- state.center$x
mergedData$StateCenterY <- state.center$y

