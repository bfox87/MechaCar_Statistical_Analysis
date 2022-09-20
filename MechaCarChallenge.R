# Deliverable 1:

# Loading in dplyr package with library() function.
library(dplyr)

# Importing and reading in csv as a dataframe.
mechaMpg <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechaMpg)

# Use summary() function to determine p and r-squared values for linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechaMpg))

# Deliverable 2:

# Importing and reading in suspension_coil.csv as a dataframe.
mechaCoil <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Creating total_summary df using summary() function to get stats of coil's PSI column.
total_summary <- mechaCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Creating lot_summary df using groupby() & summary() functions to get stats by lot of coil's PSI column.
lot_summary <- mechaCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                       Median=median(PSI),
                                                                       Variance=var(PSI),
                                                                       SD=sd(PSI))

# Deliverable 3:

# Using t.test() function to determine if PSI across lots stat diff from mu of 1500 psi.
t.test(mechaCoil$PSI,mu=1500)

# Now for each lot individually.
# Test for lot 1.
t.test(subset(mechaCoil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

# Test for lot 2.
t.test(subset(mechaCoil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

# Test for lot 3.
t.test(subset(mechaCoil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
