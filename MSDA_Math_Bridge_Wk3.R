# MSDA Math Bridge, Week 3
# Logan Thomson

# Chapter 7, questions 1-10

# 1. If scores are normally distributed with a mean of 35 and a standard deviation of 10, what percent of the scores is: 
# a) greater than 34?
pnorm(35, 34, 10)
ans: 0.5398278

# b) smaller than 42?
pnorm(42, 35, 10)
ans: 0.7580363

# c) between 28 and 34?
pnorm(34, mean=35, 10) - pnorm(28, mean=35, 10)
ans: 0.2182085

# 2.a) What are the mean and standard deviation of the standard normal distribution?
# Ans. - The standard normal distribution is defined as a normal distribution with a mean of 0 and a standard deviation of 1.

# b) What would be the mean and standard deviation of a distribution created by multiplying the standard normal distribution
# by 8 and then adding 75?
Mean = 75
SD = 8

# 3.The normal distribution is defined by two parameters. What are they?
# Answer: Normal distributions are defined by two parameters, the mean (μ) and the standard deviation (σ)

# 4. a) What proportion of a normal distribution is within one standard deviation of the mean?
pnorm(1) - pnorm(-1) = 0.6826895

# b) What proportion is more than 2.0 standard deviations from the mean?
pnorm(2) - pnorm(-2) = 0.9544997

# c) What proportion is between 1.25 and 2.1 standard deviations above the mean?
pnorm(2.1) - pnorm(1.25) = 0.08778535

# 5. A test is normally distributed with a mean of 70 and a standard deviation of 8. 
# a) What score would be needed to be in the 85th percentile? 
qnorm(.85, 70, 8) = 78.29147

# b) What score would be needed to be in the 22nd percentile?
qnorm(.22, 70, 8) = 63.82245

# 6. Assume a normal distribution with a mean of 70 and a standard deviation of 12. 
# What limits would include the middle 65% of the cases?
# Lower Bound:
qnorm(.175, 70, 12) = 58.78493

# Upper Bound:
qnorm(.825, 70, 12) = 81.21507

# 7. A normal distribution has a mean of 20 and a standard deviation of 4. Find the Z scores for the following numbers:
# Z = (x - mean) / SD
# a) 28
(28 - 20) / 4 = 2

# b) 18
(18 - 20) / 4 = -.5

# c) 10
(10 - 20) / 4 = -2.5

# d) 23
(23 - 20) / 4 = .75

# 8. Assume the speed of vehicles along a stretch of I-10 has an approximately normal distribution with 
# a mean of 71 mph and a standard deviation of 8 mph. 
# The current speed limit is 65 mph. What is the proportion of vehicles less than or equal to the speed limit?
pnorm(65, 71, 8) = 0.2266274

# What proportion of the vehicles would be going less than 50 mph?
pnorm(50, 71, 8) = 0.004332448

# A new speed limit will be initiated such that approximately 10% of vehicles will be over the speed limit. 
# What is the new speed limit based on this criterion?
qnorm(.90, 71, 8) = 81.25241

# In what way do you think the actual distribution of speeds differs from a normal distribution?
# The problem states taht the distribution is approximately normal.  There may be some values on either side of the mean that
# slightly skew the distribution postively or negatively.

# 9. A variable is normally distributed with a mean of 120 and a standard deviation of 5. One score is randomly sampled. 
# What is the probability it is above 127?
1 - (pnorm(127, 120, 5)) = 0.0807567

# 10. You want to use the normal distribution to approximate the binomial distribution. Explain what you need to do to find 
# the probability of obtaining exactly 7 heads out of 12 flips.
# We need to round off and consider any value from 6.5 to 7.5 to represent an outcome of 7 heads
μ = Nπ = (12)(0.5) = 6
σ2 = Nπ(1-π) = (12)(0.5)(0.5) = 3
SD = 1.732051
# Then, find the area under 7.5 and 6.5 respectively, and subtract the area from each other to find the approximation:
pnorm(7.5, 6, 1.732051) - pnorm(6.5, 6, 1.732051) = 0.1931769

# Chapter 9, 6-15

# 6. If the correlation between reading achievement and math achievement in the population of fifth graders were 0.60, 
# what would be the probability that in a sample of 28 students, the sample correlation coefficient would be greater than 0.65? 
zprime = .5 * log((1.6) / (.4)) = 0.6931472
zprime1 = .5 * log((1.65) / (.35)) = 0.7752987

stderr = 1 / sqrt(28 - 3) = .2
z = (X - μ)/σ = (.7752987 - .6931472) /.2 = .4107575
1 - pnorm(.4107575) = .3406

# 7. If numerous samples of N = 15 are taken from a uniform distribution and a relative frequency distribution of the means is 
# drawn, what would be the shape of the frequency distribution?
# Answer: The shape of the frequency distribution would be close to a normal distribution.  As N increases, the shape would
# become closer to a normal distribution.

# 8. A normal distribution has a mean of 20 and a standard deviation of 10. Two scores are sampled randomly from the 
# distribution and the second score is subtracted from the first. What is the probability that the difference score will be 
# greater than 5? 


# 9. What is the shape of the sampling distribution of r? How does the shape depend on the size of the population correlation? 
# Answer - The sampling distribution is not symmetric, it is negatively skewed. The greater the size of the population, the more 
# pronounced the skew.


# 10. If you sample one number from a standard normal distribution, what is the probability it will be 0.5?
# Answer - Because the normal distribution is continuous, the probability of any one specific point is 0.

# 11. A variable is normally distributed with a mean of 120 and a standard deviation of 5. Four scores are randomly sampled. 
# What is the probability that the mean of the four scores is above 127?
N = 4
Sample_Var = 5^2 / 4 = 6.25
std_err = sqrt(6.25) = 2.5 
1 - pnorm(127, 120, 2.5) = .0025

# 12. The correlation between self esteem and extraversion is .30. A sample of 84 is taken. 
# a) What is the probability that the correlation will be less than 0.10?
zprime = .5 * log((1.1) / (.9)) = 0.1003353
zprime1 = .5 * log((1.3) / (.7)) = 0.3095196

stderr = 1 / sqrt(84 - 3) = 0.1111111
pnorm(.1003353, 0.3095196, .111111) = 0.02987319

# b) What is the probability that the correlation will be greater than 0.25?
zprime = .5 * log((1.25) / (.75)) = 0.2554128
zprime1 = .5 * log((1.3) / (.7)) = 0.3095196

stderr = 1 / sqrt(84 - 3) = 0.1111111
1 - pnorm(0.2554128, 0.3095196, .111111) = 0.6868573

# 13. The mean GPA for students in School A is 3.0; the mean GPA for students in School B is 2.8. The standard deviation 
# in both schools is 0.25. The GPAs of both schools are normally distributed. If 9 students are randomly sampled from each 
# school, what is the probability that:
# a) the sample mean for School A will exceed that of School B by 0.5 or more?


# b) the sample mean for School B will be greater than the sample mean for School A?


# 14. In a city, 70% of the people prefer Candidate A. Suppose 30 people from this city were sampled. 
# a) What is the mean of the sampling distribution of p?
# Answer: The mean of the sample distribution should be close to .7, which would be the mean of 30 prefence scores 
# (prefer or not prefer) Candidate A.  This is a binomial distribution.

# b) What is the standard error of p?
std_err = std_dev = sqrt((.7 * .3) / 30) = 0.083666

# c) What is the probability that 80% or more of this sample will prefer Candidate A?
1 - pnorm(.80, .7, .083666) = 0.1159989

# d) What is the probability that 45% or more of this sample will prefer some other candidate?
1 - pnorm(.45, .3, .083666) = 0.03649902

# 15. When solving problems where you need the sampling distribution of r, what is the reason for converting from r to z'?
# Answer: The sampling distribution of r is not normal (negatively skewed), and z' is the result of the transformation to 
# normal distribution with a standard error of 1 / sqrt(N - 3).

# Chap. 10, 10-18

# 10. The effectiveness of a blood-pressure drug is being investigated. How might an experimenter demonstrate that, on average, 
# the reduction in systolic blood pressure is 20 or more?
# Answer - The experimenter would conduct two different tests for the drug to find the mean reduction in blood pressure. The 
# difference in means can then be used to find the confidence interval.  To do that, (s)he needs the standard error of the
# difference between the means.  Then, (s)he needs to find the t to use for the confidence interval, and in order to do that 
# needs to calculate the degrees of freedom (df), which is (n1 - 1) + (n2 - 1).  Once all of these factors are known, an 
# acceptable range for the sample mean can be calculated.

# 11.A population is known to be normally distributed with a standard deviation of 2.8. 
# a) Compute the 95% confidence interval on the mean based on the following sample of nine: 8, 9, 10, 13, 14, 16, 17, 20, 21.
sample mean = (8 + 9 + 10 + 13 + 14 + 16 + 17 + 20 + 21) / 9 = 14.22222
std_err = 2.8 / sqrt(9) = 0.9333333
l_limit = 14.22222 - (1.96 * .9333333) = 12.39289
u_limit = 14.22222 + (1.96 * .9333333) = 16.05155

# b) Now compute the 99% confidence interval using the same data.
l_limit = 14.22222 - (2.58 * .9333333) = 11.81422
u_limit = 14.22222 + (2.58 * .9333333) = 16.63022

# 12. A person claims to be able to predict the outcome of flipping a coin. This person is correct 16/25 times. Compute the 95% 
# confidence interval on the proportion of times this person can predict coin flips correctly. What conclusion can you draw 
# about this test of his ability to predict the future? 
sample mean = 16 / 25 = .64
Sp = sqrt(.64 * (1 - .64) / 25) = .096
l_limit = .64 - (1.96 * .096) - (.5 / 25) = 0.43184
u_limit = .64 + (1.96 * .096) + (.5 / 25) = 0.84816

# Assuming that the coin is fair, we would guess the mean for correct guesses of the side of the coin would be .5. based on the
# sample size, this person appears to have a slightly above-average ability to predict coin flips given a relatively small
# small sample size. Should the sample size increase, I would guess the mean of correct guesses would be closer to .5.

# 13. What does it mean that the variance (computed by dividing by N) is a biased statistic?
# Answer: If N is used in the formula for variance, then the estimates tend to be too low and therefore biased. N-1 is used in
# the calculation of the sample variance to give an unbiased estimate of the population variance.

# 14. A confidence interval for the population mean computed from an N of 16 ranges from 12 to 28. A new sample of 36 
# observations is going to be taken. You can't know in advance exactly what the confidence interval will be because it depends
# on the random sample. Even so, you should have some idea of what it will be. Give your best estimation.


# 15. You take a sample of 22 from a population of test scores, and the mean of your sample is 60. 
# a) You know the standard deviation of the population is 10. What is the 99% confidence interval on the population mean.
sample_mean = 60
std_err = 10 / sqrt(22) = 2.132007
l_limit = 60 - (2.58 * 2.132007) = 54.49942
u_limit = 60 + (2.58 * 2.132007) = 65.50058

# b) Now assume that you do not know the population standard deviation, but the standard deviation in your sample is 10. 
# What is the 99% confidence interval on the mean now? 


# 16.You read about a survey in a newspaper and find that 70% of the 250 people sampled prefer Candidate A. You are surprised 
# by this survey because you thought that more like 50% of the population preferred this candidate. Based on this sample, is 50%
# a possible population proportion? Compute the 95% confidence interval to be sure.
sample_mean = .70
std_dev = sqrt(.70 * (.3) / 250) = 0.02898275
l_limit = .70 - (1.96 * .02898275) = 0.6431938
u_limit = .70 + (1.96 * .02898275) = 0.7568062

# 50% of the population is an unlikely proportion of the population, since this ratio falls outside of the lower limit for the
# confidence interval. Even with a much larger sample size, it is unlikely that the preference for Candidate A would approach
# 50%.

# 17. Heights for teenage boys and girls were calculated. The mean height for the sample of 12 boys was 174 cm and the variance 
# was 62. For the sample of 12 girls, the mean was 166 cm and the variance was 65. 
# a) What is the 95% confidence interval on the difference between population means?
M1 - M2 = 174 - 166 = 8
SE_diff_Means = (62 + 65) / 2 = 63.5
std_err_diff = sqrt(2 * (63.5) / 12) = 3.253204
df = (12 - 1) + (12 - 1) = 22
t_val = qt(.975, 22) = 2.073873

l_limit = 8 - (2.073873 * 3.253204) = 1.253268
u_limit = 8 + (2.073873 * 3.253204) = 14.74673

# b) What is the 99% confidence interval on the difference between population means?
t_val = qt(.995, 22) = 2.818756

l_limit = 8 - (2.818756 * 3.253204) = -1.169988
u_limit = 8 + (2.818756 * 3.253204) = 17.16999
# c) Do you think the mean difference in the population could be about 5? Why or why not?



# 18. You were interested in how long the average psychology major at your college studies per night, so you asked 10 psychology
# majors to tell you the amount they study. They told you the following times: 2, 1.5, 3, 2, 3.5, 1, 0.5, 3, 2, 4. 
# a) Find the 95% confidence interval on the population mean.
sample_mean = sum(2, 1.5, 3, 2, 3.5, 1, 0.5, 3, 2, 4) / 10 = 2.25


# b) Find the 90% confidence interval on the population mean.

