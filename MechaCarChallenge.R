# import package
library(tidyverse)
library(dpylr)

# import and read data as a dataframe
MechaCar <- read_csv("data/MechaCar_mpg.csv")
head(MechaCar)

# Deliverable 1 Linear Regression to Predict MGP

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #create linear model

# determine the p-val and r_sq val
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)) #summarize linear model

# Deliverable 2: Create Visualizations for the Trip Analysis

suspension <- read_csv("data/Suspension_Coil.csv")
head(suspension)

# mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
head(total_summary)

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD=sd(PSI))
lot_summary

# Deliverable 3: t-Tests on Suspension Coils 
