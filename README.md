# MechaCar_Statistical_Analysis

## Background & Purpose:
AutosRUs is wanting to modernize their decision-making process, which means backing up their data analytics efforts with robust statistical analysis. Now, AutosRUs' newest prototype, the MechaCar, has run into production issues preventing further manufacturing progress. Our data analytics team must now use our statistical know-how with R to review the production data to glean any useful insights that may help fix the production issues.

## Linear Regression to Predict MPG:
A linear model that predicts the mpg of MechaCar protypes was created. The equation and output of this linear regression model is shown below:

mpg = 6.267(vehicle_length) + .001245(vehicle_weight) + .06877(spoiler_angle) + 3.546(ground_clearance) - 3.411(AWD) - 104.0

**Output**:
![mpg_regression](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/mpg_regression.PNG)

- Vehicle length and ground clearance are statistically likely to provide a non-random amount of variance in the regression model above. This is inferred by looking at the Pr(>|t|) values. This means the length and ground clearance of the vehicle have a significant impact on the MechaCar prototype's mpg fuel efficiency. It should also be noted that the intercept is also statistically significiant, meaning that vehicle length and ground clearance may need some scaling or transforming to help improve the model's predictive power.
- The slope of this linear model should not be considered zero. This is because we have enough evidence to reject our null hypothesis that the slope of the model is zero. This evidence is that p-value of the model (5.35e-11) is quite a bit smaller than our assumed significance level of 0.05%.
- In general, this model does predict mpg of MechaCar prototypes effectively. This is deduced by looking at the the r-squared value, which is .7149 in this model. This means around 71% of the variability in mpg is explained with this model. 

## Summary Statistics on Suspension Coils:
Summary statistics were generated on the weight capacities (PSI levels) of the suspension coils to see if the manufacturing process is consistent across production lots. Statistics for all lots (total summary) were first generated, followed by results for each lot individually.

** All Lots:**
![total_summary](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/total_summary.PNG)

**Broken Out:**
![lot_summary](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/lot_summary.PNG)

The design specs for the coils require variance must not exceed 100 PSI. When looking at all three lots as a whole, the variance of 62.9 is below the threshold. However, looking deeper into the details reveals problems in Lot 3. Lot 3's variance of 170.3 PSI is much higher than the 100 PSI threshold. Clearly the manufacturing process in Lot 3 must be adjusted if consistency is to be improved. The good news is that Lots 1 and 2 have very low variances indicating correctly functioning manufacturing processes in these lots. 

## T-Tests on Suspension Coils:
T-tests were performed on all lots together and each lot individually to determine if their mean PSIs were statistically different from the population mean of 1,500 PSI.

![t_test](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/t_test.PNG)

From results above, we can declare the mean PSI of all lots to be statistically similiar to the population mean of 1500 PSI. This is because the p-value of .06028 is higher than our assumed significance level of .05, meaning we fail to reject our null hypothesis of no statistical difference.

** Results by Lot:**
![by_lot_t_test](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/by_lot_t_test.PNG)

Looking at the lots individually, Lots 1 and 2 have p-values (1 and .6072 respectively) that are higher than our assumed significance level of .05. Therefore we fail to reject our null and can assume the mean PSIs of each lot are statistically similiar to that of the population mean of 1500. Lot 3, however, tells a different story. The t-test run on Lot 3 gives a p-value of .04168 which is less than the .05 level. We can then reject our null and conclude there is a statistical difference between Lot 3's PSI mean and the population mean. This, combined with the results found in Deliverable 2, certainly indicate Lot 3 as having some production issues.

## Study Design: MechaCar vs Competition:
- Consumers often prioritize purchase price as one of the most important factors in their buying decision. It's common practice to look at a vehicle and compare its price with that of its competitors (i.e. same vehicle type/features). Therefore, when the MechaCar goes to market a study to determine how the vehicle fares in this metric is important.

- We can first develop the hypotheses for our study:
    - H0: Null hypothesis is the would be there is no difference in MechaCar's average retail price than that of its competitors.
    - Ha: Alternative hypothesis is that MechaCar's average retail price is statistically different (cheaper or more expensive) than that of its' competitors vehicles of the same type.

- A two-sample t-test known as pair t-test should be conducted since we are looking at observations in one dataset (MechaCar) with observations in another (competitors of same vehicle type). The resulting p-value generated will then be compared to an assumed significance level of .05 percent to determine whether we should reject or fail to reject the null hypothesis. More specifically, if our study's p-value is less than .05, this will indicate we can reject our null and assume MechaCar's average retail price is different than that of its competitors. 

- The retail price dataset for MechaCar and its competitors would contain numerical, continuous data. The data needs to come from vehicles of similiar types. For example, it doesn't make sense to compare the MechaCar prices with vehicles that are completely different. Also, both would need to be sufficiently large and considered to be approxiametely normally distributed.