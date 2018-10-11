

#3) Merge arrests and US data based on row names
mergedData <- merge(arrests, cleanDfStates, by="row.names", all=TRUE)

#Remove additional States column from merged table
#and rename to StateName
mergedData <- mergedData[,-c(6)]
colnames(mergedData)[1] <- "StateName"

mergedData <- mergedData(-c(9),)
state.name

