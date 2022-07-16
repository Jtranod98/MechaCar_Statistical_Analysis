# import packages
library(tidyverse)
#library(dpylr)

# import and read data as a dataframe
MechaCar <- read_csv("data/MechaCar_mpg.csv", show_col_types = FALSE)
head(MechaCar)

# Deliverable 1 Linear Regression to Predict MGP

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #create linear model

# determine the p-val and r_sq val
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)) #summarize linear model

# Deliverable 2:  Create summary statistics on the (PSI) of the suspension coils from the manufacturing lots

# import and read in the Suspension_Coil.csv file as a table.
suspension <- read_csv("data/Suspension_Coil.csv", show_col_types = FALSE)
head(suspension)

# using the summarize() function to get the mean, median, variance, and standard deviation
# of the suspension coil’s PSI column.
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# using the group_by() and the summarize() functions to group each manufacturing lot 
# by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD=sd(PSI))
lot_summary

# Deliverable 3: t-Tests on Suspension Coils 

# determine if the PSI across all manufacturing lots is statistically different from 
# the population mean of 1,500 pounds per square inch.

t.test(suspension$PSI, mu=1500)

# write three RScripts using the t.test() function and its subset() argument 
# to determine if the PSI for each manufacturing lot is statistically different
# from the population mean of 1,500 pounds per square inch.

lot_1 = subset(suspension, Manufacturing_Lot =='Lot1')
t.test(lot_1$PSI, mu=1500)

lot_2 = subset(suspension, Manufacturing_Lot =='Lot2')
t.test(lot_2$PSI, mu=1500)

lot_3 = subset(suspension, Manufacturing_Lot =='Lot3')
t.test(lot_3$PSI, mu=1500)
