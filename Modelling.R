#Regression Modelling
Model1 <- glm(VisitPageFlag2 ~ ServerID,
                          family = "binomial",
                          data = GroceryData)
summary(Model1)
