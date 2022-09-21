# MechaCar_Statistical_Analysis

## Background & Purpose:
AutosRUs is wanting to modernize their decision-making process, which means backing ip their data analytics efforts with robust statistical analysis. Now, AutosRUs' newest prototype, the MechaCar, has run into production issues preventing further manufacturing progress. Our data analytics team must now use R and our statistical knowledge to review the production data to glean any useful insights in order to help fix the production issues.

## Linear Regression to Predict MPG:
A linear model that predicts the mpg of MechaCar protypes was created. The equation and output of this linear regression model is shown below:

mpg = 6.267*vehicle_length + .001245*vehicle_weight + .06877*spolier_angle + 3.546*ground_clearance - 3.411*AWD - 104.0

![mpg_regression](https://github.com/bfox87/bikesharing/blob/main/Screenshots/mpg_regression.PNG)

### Summary:
- Vehicle length and ground clearance are statistically likely to provide a non-random amount of variance in the regression model above. This is inferred by looking at the Pr(>|t|) values. This means the length and ground clearance of the vehicle have a significant impact on the MechaCar prototype's mpg fuel efficiency. It should also be noted that the intercept is also statistically significiant, meaning that vehicle length and ground clearance may need some scaling or transforming to help improve the model's predictive power.
- The slope of this linear model should not be considered zero. This is because we have enough evidence to reject our null hypothesis that the slope of the model is zero. The evidence is that p-value of the model (5.35e-11) is quite a bit smaller than our assumed significance level of 0.05%.
- In general, this model does predict mpg of MechaCar prototypes effectively. This is deduced by looking at the the r-squared value, which is .7149 in this model. This means around 71% of the variability in mpg is explained with this model. 

## Summary Statistics on Suspension Coils:
Summary statistics were generated on the weight capacities (PSI levels) of the suspension coils to see if the manufacturing process is consistent across production lots. Statistics for all lots (total summary) were first generated, followed by results for each lot individually.

![total_summary](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/total_summary.PNG)

![lot_summary](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/lot_summary.PNG)

The design specs for the coils require variance must not exceed 100 PSI. When looking at all three lots as a whole, the variance of 62.9 is below the threshold. However, looking into the details more reveals problems in Lot 3. Lot 3's variance is 170.3 PSI is much higher than the 100 PSI threshold. Clearly the manufacturing process in Lot 3 must be adjusted so the variance can fall below the 100 PSI threshold. The good news is that Lots 1 and 2 have very low variances indicating correctly functioning manufacturing processes in these lots. 

## T-Tests on Suspension Coils:
T-tests were performed on all lots together and each lot individually to determine if their mean PSIs were statistically different from the population mean of 1,500 PSI.

![t_test](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/t_test.PNG)

From results above, we can declare the mean PSI of all lots to be statistically similiar to the population mean of 1500 PSI. This is because the p-value of .06028 is higher than our assumed significance level of .05, meaning we fail to reject our null hypothesis of no statistical difference.

![Lot1_t_test](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot1_t_test.PNG)

![Lot2_t_test](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot2_t_test.PNG)

![Lot3_t_test](https://github.com/bfox87/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot3_t_test.PNG)

Looking at the lots individually, Lots 1 and 2 have p-values (1 and .6072 respectively) that are higher than our assumed significance level of .05. Therefore we fail to reject our null and can assume the mean PSIs of each lot are statistically similiar to that of the population mean of 1500. Lot 3, however, tells a different story. The t-test run on Lot 3 gives a p-value of .04168 which is less than the .05 level. We can then reject our null and conclude there is a statistical difference between Lot 3's PSI mean and the population mean. This, combined with the results found in Deliverable 2, certainly indicate Lot 3 is having some production issues.

## Study Design: MechaCar vs Competition:
- It would be useful to conduct a study to determine if the MechaCar is rated as safe as its competitors. This would mean comparing the overall safety rating of MechaCar with those vehicles with closely similiar features made by competitors.

- H0: Null hypothesis would be there is no significant difference in MechaCar's overall safety rating than that of its competitors. 
- Ha: Alternative hypothesis is that MechaCar's safety rating is significantly different than that of its similiar-featured competitors.

- A multiple linear regression model can be used for this study. The dependent variable would be the car's overall safety rating. The independent variables would be: number of airbags, seat belt effectiveness score, rollover-test score, and safety dummy measurements. The resulting p-value can be compared to a fixed significance level of .05 to determine if the null hypothesis can be rejected.

- Data would need to be collected for the variables listed above. The dataset should be reasonably large and ideally go back several years if possible.