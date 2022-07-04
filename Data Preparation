#Load libraries
library(readr)
library(dplyr)
library(tidyr)

#Load data
GroceryData <- read_csv("grocerywebsiteabtestdata.csv")

#Remove RecordID variable
GroceryData<- select(GroceryData, -c("RecordID"))
head(GroceryData)

#Group the rows by IP Address
GroceryData <- GroceryData %>%
  group_by(`IP Address`, LoggedInFlag, ServerID) %>%
  summarise(VisitPageFlag = sum(VisitPageFlag))

#Create new variable which limits all grouped IP Addresses to 1 visit
GroceryData$VisitPageFlag2 <- GroceryData$VisitPageFlag
GroceryData$VisitPageFlag2[GroceryData$VisitPageFlag == 2] <- 1
GroceryData$VisitPageFlag2[GroceryData$VisitPageFlag == 3] <- 1
GroceryData$VisitPageFlag2[GroceryData$VisitPageFlag == 4] <- 1

#Label the rows by servers
GroceryData$Group[GroceryData$ServerID == 1] <- "Test"
GroceryData$Group[GroceryData$ServerID == 2] <- "Control"
GroceryData$Group[GroceryData$ServerID == 3] <- "Control"

#Remove users who already have an account from the dataset
GroceryData <- GroceryData %>% filter(LoggedInFlag != 1)
head(GroceryData)

GroceryData<- select(GroceryData, -c("VisitPageFlag"))
