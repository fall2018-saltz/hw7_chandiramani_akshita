
#1)	Read in the census dataset (using the function created in HW 3)
state.name
CleanDataframe <- function(states)
{
  
  #Removing Puerto Rico and the summary for the united states (first row)
  dfStates_reqRows <- states[-c(1,nrow(states)),]
  
  # Keeping only the required col names (stateName, population, popOver18, percentOver18) 
  # and removing the rest 1st, 2nd, 3rd and 4th column
  dfStates_reqCols <- dfStates_reqRows[,-c(1,2,3,4) ]
  colnames(dfStates_reqCols)<-c("stateName","population","popOver18","percentOver18")
  cleanDfStates <- dfStates_reqCols
  return(cleanDfStates)
}

cleanDfStates <- CleanDataframe(raw_data)

head(cleanDfStates)

#2) Initializing arrests with USArrests data
arrests <- USArrests
rownames(cleanDfStates)
head(cleanDfStates)
#Setting rownames as state name for future merging
rownames(cleanDfStates) <- cleanDfStates$stateName
