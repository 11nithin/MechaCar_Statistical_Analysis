# MechaCar_Statistical_Analysis


## Purpose of the Analysis
AutosRUs' new MechaCar is "suffering from production troubles" and the company is hoping that an analytical review may help provide some insight. 

Two datasets are provided for Mechacars prototype vehicles
 - MechaCar_mpg.csv - Test results for 50 prototype MechaCars with multiple metrics.
 - Suspension_Coil.csv -  The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

## Linear Regression to Predict MPG


![image](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20regression%20summary.JPG)


From the result Vehicle length and Ground clearence have a non-random effect on MPG of the MechaCar. 
- p-value: 5.35e-11 is lower than significance level of 0.05%  and the slope of the linear model is zero thus the null hypothesis must be rejected. . In other words, we can predict MPG using linear model with vehicle length and ground clearance values.
- Multiple R-squared: 0.7149 means that the regression model can approximate MPG with 71% accurate

## Summary Statistics on Suspension Coils

![image](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/Total_Summary.JPG)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). Since the variance is 62.29, so current manufacturing data meet this design specification.

![image](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_Summary.JPG)

- If we look at the individual lots suspension coils variance for lot 3 is 170. The suspension coils for lot 3 may exceed design specifications variance values and doesn't meet the requirement.


## T-Tests on Suspension Coils

One sample t-test is performed on each lot 

![one](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/One%20sample%20ttest.JPG)
- T-test for the suspension coil across all lots shows that they are not statistically different from the population mean.

### Lot 1
![1](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot1_one%20sample%20t%20test.JPG)
- Lot 1 Ttest for the suspension coils show that they are not statiscally different from the population mean and p value is .6072 no low enoguh to reject the null hypothesis

### Lot 2
![2](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/Lot2_one%20sample%20ttest.JPG)
- Lot 2 Ttest for the suspension coils show that they are not statiscally different from the population mean and p value is .6072 no low enoguh to reject the null hypothesis

### Lot 3
![3](https://github.com/11nithin/MechaCar_Statistical_Analysis/blob/main/Resources/lot3_one%20sample%20ttest.JPG)
- Lot 3 Ttest for the suspension coils show that they are statiscally different from the population mean and p value is .04168 low enough to reject the null hypothesis

## Study Design: MechaCar vs Competition
When comparing MechaCar with competitors, customer maintenance cost is important metric to be considered. 

- Null hypothesis: No statistical difference between mean of maintenance cost for MechaCar and competitors. Significance level should be 0.05%.
- Two sample t-test can be used to prove or reject null hypothesis
- Additional maintenance data is required to perform the test.



