# import package
library(tidyverse)
library(dpylr)

# import and read data as a dataframe
MechaCar <- read_csv("MechaCar_mpg.csv")
head(MechaCar)

# Deliverable 1 Linear Regression to Predict MGP

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #create linear model

# detrmine the p-val and r_sq val
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)) #summarize linear model
