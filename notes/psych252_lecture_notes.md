# Lectures notes 

## Figure references: 

- exploratory_vs_confirmatory_research: Wagenmakers et al. - 2012 - An Agenda for Purely Confirmatory Research
- xkcd_correlation: https://xkcd.com/552/
- xkcd_frequentist_vs_bayesian: https://xkcd.com/1132/
- xkcd_significant1 -- 4: https://xkcd.com/882/

## Polleverywhere questions 

- see: StatisticsClickerQsAnnotated072408.doc

__sample size & effect size__

Two studies investigating the effect of motivation upon job performance found different results. With the exception of the sample size the studies were identical. The first study used a sample size of 500 and found statistically significant results, whereas the second study used a sample size of 100 and could not reject the null hypothesis. Which of the following is true?

(A) The first study showed a larger effect than the second.
(B) The first study was less biased than the second study for estimating the effect size because of the larger sample size.
(C) The first study results are less likely to be due to chance than the second study results.
(D) Two of the above are true.
(E) All of the above are true.

Explanations

Note: p-value is implicit in this question because of the phrase "statistically significant results" (i.e., The results are statistically significant if and only If the observed p-value is less than the fixed ).

(A)	The p-value confounds effect size and sample size.

(B)	Both samples will give unbiased results if they are random samples.

(C)*	correct – The first study's results are statistically significant so the p-value must be smaller than the one from the second study; therefore, the first study's results are less likely due to chance.

(D), (E) Only (C) is correct.

***

__significance and power__

Carol reports a statistically significant result (p < 0.02) in one of her journal articles. The editor suggests that because of the small sample size of the study (n = 20), the result cannot be trusted and she needs to collect more data before the article can be published. He is concerned that the study has too little power. How would you respond to the editor?

(A) The study has enough power to detect the effect since the significant result was obtained.
(B) Because the sample size so small, increasing the sample size to 200 should ensure sufficient power to detect a small effect.
(C) Setting the $\alpha$ = 0.01 would be an alternative to collecting more data.
(D) Because the p-value is so close to $\alpha$ = 0.05, the effect size is likely to be small and hence more information is needed.

Explanations

(A)*	correct – Since Carol rejected H0, it is not possible that she made a Type II error ($\beta$ = 0 so power = 1).

(B)	Carol has already detected a significant result so a bigger sample size is not needed.

(C)	Setting $\alpha$ = 0.01 would not increase the power; in fact, it would decrease the power.

(D)	Since p is so close to $\alpha$ = 0.05, the effect size is not likely to be small. 

***

__confidence interval__

A 95% confidence interval is an interval calculated from 

(A) sample data that will capture the true population parameter for at least 95% of all samples randomly drawn from the same population.
(B) population data that will capture the true population parameter for at least 95% of all samples randomly drawn from the same population. 
(C) sample data that will capture the true sample statistic for at least 95% of all samples randomly drawn from the same population.
(D) population data that will capture the true sample statistic for at least 95% of all samples randomly drawn from the same population.


Explanations

Note: One point of this question is that inferential statistics is about estimating population parameters from sample data.

(A)*	correct – This statement refers to the ideas behind sampling and the Central Limit Theorem.

(B)	A calculation from population data would capture the true population parameter with 100% confidence.

(C)	Sample statistics have a sampling distribution so there is no one true sample statistic.

(D)	See the explanations for (B) and (C).

*** 

__confidence interval 2__

Suppose we have the results of a Gallup survey (simple random sampling) which asks participants for their opinions regarding their attitudes toward technology. Based on 1500 interviews, the Gallup report makes confidence statements about its conclusions. If 64% of those interviewed favored modern technology, we can be 95% confident that the percent of those who favored modern technology is 

(A) 95% of 64%, or 60.8%
(B) 95% +/- 3%
(C) 64%
(D) 64% +/- 3%
 
Explanations

(A)	Students are attending to the surface features of the problem, doing calculations with the numbers that are given.

(B)	95% is the confidence level not the point estimate for the population parameter.

(C)	64% is the point estimate, but this answer does not contain a margin of error (and thus does not give an interval estimate).

(D)*	correct – This answer has both the correct point estimate (64%) and the interval estimate (based on a margin of error). Note that 64% is the center of this interval, which is a feature that students should recognize about confidence intervals.

***

_random sampling_

If you were trying to obtain a random sample of a population of interest for a political poll for a local mayoral race, which of the following approaches would be best to obtain the random sample?

(A) Randomly assign a number to local companies and, using random-number generation, go to those companies selected and conduct interviews.
(B) Randomly select a busy street corner in your city and conduct on-site interviews.
(C) Assign a number to people in the local phone book and, using random-number generation, call those randomly selected.
(D) Randomly select a couple of television stations from your local cable company using random number generation and ask people through advertising to call a polling line.
(E) Randomly dial phone numbers within the selected area and interview those who answer the phone.


Explanations

Note: This question has a best answer (E), but students could argue for other options. Thus, this question might be good for generating discussion.

(A)	 This method is biased towards those who work.

(B)	This method is biased towards those who happen to be on this particular street corner at the time of the interviews. This is known as a convenience sample.

(C)	This method is biased towards people who are listed in the phone book.

(D)	This method is biased towards people who watch TV, and those particular stations. This method is known as a volunteer sample.

(E)*	correct – This method is still biased towards people who have a phone, but it is the best approach from the options provided.


*** 

_correlation_

You are conducting a correlation analysis between a response variable and an explanatory variable. Your analysis produces a significant positive correlation between the two variables. Which of the following conclusions is the most reasonable?

(A) Change in the explanatory variable causes change in the response variable.
(B) Change in the explanatory variable is associated with in change in the response variable.
(C) Change in the response variable causes change in the explanatory variable
(D) All from (A)-(C) are equally reasonable conclusions.


Explanations

(A), (C) Correlation does not imply causation.

(B)*	correct – Correlation tells us only about the strength and direction of a relationship, not about the cause-effect aspect of the relationship.

(D)	Only (B) is a reasonable (correct) conclusion from the information given.

***

_regression_

What is the most common rationale for significance testing of simple linear regression?

(A) to test if the intercept is significantly large
(B) to test is the slope of the regression line is positive
(C) to test if the slope of the regression line is negative
(D) to test if the slope is different from zero
(E) to appease an editor or reviewer when publishing the results


Explanations

(A)	It is a very rare circumstance in which the intercept is tested for significance.

(B), (C) The sign of the slope is not as important as the fact that it’s non-zero.

(D)*	correct – A non-zero slope indicates a relationship between the variables.

(E)	This is not a valid scientific rationale for significance testing.


