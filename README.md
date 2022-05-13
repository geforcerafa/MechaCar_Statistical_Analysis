# Statistics and R


Statistical analysis using R and RStudio.


## Overview of Project

In this project we are applying different statistical analysis to the data sets given. The fuel efficiency, suspension coils measures of central tendency and dispersion were calculated. Also, t-test to measure mean variability were analyzed. 


### Resources used:
-	Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
-	Software: R and RStudio.


## Results:

Here is a summary of the results found.

## Linear Regression to Predict MPG 

A multiple linear regression model was made to predict the miles per gallon (mpg) based on the vehicle length, vehicle weight, spoiler angle, ground clearance, AWD and mpg. R took out mpg because it is the one we are trying to predict based on the other ones. 
The results are as follow. 


![Deliv 1 Summary Linear Regresion](https://user-images.githubusercontent.com/96758511/168246819-b779243e-d7b8-45a4-8139-d26ac37dc36f.png)


Statistical summary of the multiple linear regression


Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables spoiler angle, AWD and vehicle weight provided non-random amount of variance. They were the ones that have the highest weight in predicting mpg. 

Is the slope of the linear model considered to be zero? Why or why not?

The slope is not zero because the model does help to predict the value of mpg, based on the variables given. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

The model effectively predicts mpg of MechaCar prototypes, because the r squared of the model is 0.7149 which is sufficiently close to 1.


## Summary Statistics on Suspension Coils 

A statistical analysis was made on the suspension coil for the MechaCar, to calculate measures of central tendency and dispersion. Here we have the results.

![Deliv 2 Total Summary](https://user-images.githubusercontent.com/96758511/168246945-9e5d1392-5688-4bf2-9cc5-f8615adc4e6b.png)


Summary of the total analysis 

![Deliv 2 Lot Summary](https://user-images.githubusercontent.com/96758511/168246970-552e3836-14be-44c9-a7e1-1d7b06556363.png)


Summary of the analysis by lot


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

It is better to start by the analysis of the Manufacturing Lots. The lot number 3 has a very high variance, of 170 and does not comply with the specifications of variance. The other two have a very low variance, of 0.98 for the Lot 1 and 7.5 for Lot 2, and they are according to the requirements. 

Considering the 3 lost together the variance is 62.3. In the aggregate they comply with the specification. 

## T-Tests on Suspension Coils 
As part of the analysis, t-tests were made to see if there was statistical difference in the means between all the lost and the population. And between each lot and the population.


![Deliv 3 All manufacturing lots vs population](https://user-images.githubusercontent.com/96758511/168247033-683bcac0-d333-4e15-ae28-9612384af16d.png)

T-test between all the lots and the population 


![Deliv 3 Lot 1 vs population t test](https://user-images.githubusercontent.com/96758511/168247067-3c19809d-b3e5-493a-abcb-6f529d3a8d73.png)

T-test between lot 1 and the population 


![Deliv 3 Lot 2 vs population t test](https://user-images.githubusercontent.com/96758511/168247098-c5240ecd-faeb-4e3a-8763-6df6844b5c96.png)

T-test between lot 2 and the population 


![Deliv 3 Lot 3 vs population t test](https://user-images.githubusercontent.com/96758511/168247127-94f48ff0-6ae5-4e4a-8475-5624abe599f1.png)

T-test between lot 3 and the population 

The confidence interval was set at the beginning of the test to avoid bias, and curve fitting of the results in a confidence interval of 95%. As we can see all the p-values are above 0.05 required to reject the null hypothesis. In this case we could not reject the null hypothesis, and in the 4 cases can be said that there is no statistical difference between the two observed sample means 
 
## Study Design: MechaCar vs Competition 
•	What metric or metrics are you going to test?

I think that the most important metric to compare cars would be the fuel efficiency, in this case it is the mpg (miles per gallon). For most people it is the easiest characteristic to understand and it means how much would it cost to use it. 

•	What is the null hypothesis or alternative hypothesis? 

Ho = There is no statistical difference between the two observed sample means.  
This would be that the average of the metrics of the consumption of fuel for the cars was the same.
Ha = There is a statistical difference between the two observed sample means. 
In this case we are looking for an mpg statistically higher in average versus the competition. 

•	What statistical test would you use to test the hypothesis? And why? 

The difference in fuel efficiency can be analyzed using a t-test. It is a good test because it will tell us if there is a statistical difference in the means of the fuel efficiency of the cars. In this case we can use a confidence interval of 95% which is a value widely used, and for this case it is appropriate. 

•	What data is needed to run the statistical test?

The data needed for this test would be the fuel efficiency (mpg, miles per gallon) of the MechaCar and the fuel efficiency (mpg, miles per gallon) of the car we want to compare it with. 
