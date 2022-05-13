
## Import Library

library(dplyr)

### Deliverable 1 ###

## First data frame
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
View(MechaCar_mpg)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance  + AWD + mpg  ,data=MechaCar_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance  + AWD + mpg  ,data=MechaCar_mpg))

##Deliverable 2  ###

### Second data frame
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
View(Suspension_Coil)

## total_summary_psi

total_summary_psi<- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

View(total_summary_psi)

## lot_summary_psi

lot_summary_psi <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

View(lot_summary_psi)

### Deliverable 3 ####

sample_table <- Suspension_Coil %>% sample_n(50)
t.test(Suspension_Coil$"PSI", sample_table$"PSI")

## t-test by lot   Suspension_Coil$Manufacturing_Lot

lot_1_table <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
# View(lot_1_table)
t.test(Suspension_Coil$"PSI", lot_1_table$"PSI")


lot_2_table <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
# View(lot_2_table)
t.test(Suspension_Coil$"PSI", lot_2_table$"PSI")

lot_3_table <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
# View(lot_3_table)
t.test(Suspension_Coil$"PSI", lot_3_table$"PSI")