#Explore averages of test and control group
mean(GroceryData$VisitPageFlag2[GroceryData$Group == 'Test'])
mean(GroceryData$VisitPageFlag2[GroceryData$Group == 'Control'])

#Explore ratio of visitors who download
RatioControl <- sum(GroceryData$VisitPageFlag2[GroceryData$Group == 'Control'])/
nrow(GroceryData[GroceryData$Group == "Control",])
RatioControl

RatioTest <- sum(GroceryData$VisitPageFlag2[GroceryData$Group == 'Test'])/
nrow(GroceryData[GroceryData$Group == "Test",])
RatioTest
