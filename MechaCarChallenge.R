# import dplyr package
library(dplyr)

# Import and read dataset as a dataframe
MechaCar <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# linear regression
model <- lm(MechaCar$mpg ~ MechaCar$vehicle_length + 
              MechaCar$vehicle_weight + 
              MechaCar$spoiler_angle +
              MechaCar$ground_clearance +
              MechaCar$AWD, MechaCar)

summary(model)

# Import and read suspension_coil dataset as a dataframe
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI),
                                               Median = median(PSI),
                                               Variance = var(PSI),
                                               SD = sd(PSI))
total_summary
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI),
                                                                             SD = sd(PSI))
lot_summary

# t-test
t.test(suspension_coil$PSI, mu=1500)

# t-test for each lot
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot1"), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot2"), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot3"), mu=1500)

