# Tasks

# Exercise 1. For the Simple data sets `bumpers`, `firstchi`, `math` make a histogram. 
# Try to predict the mean, median and standard deviation. Check your guesses with the appropriate R commands.

install.packages("UsingR")
library(UsingR)

hist(bumpers, breaks = 10)
# mean close to 2000 (a bit skewed to the right)
# median 2000 (middle of x-axis)
# sd approx. 800 (most frequent values are ~ 1500, 2400, 3300, so the deviation is around 700-900)
mean(bumpers)
median(bumpers)
sd(bumpers)

hist(firstchi,breaks=10)
# mean close to 24 (a bit skewed to the left)
# median 27 (middle of x-axis)
# sd 7 (most frequent values are in the range 15-30, deviation is around 7-8)
mean(firstchi)
median(firstchi)
sd(firstchi)

hist(math,breaks=10)
# mean close to 55
# median 55 (middle of x-axis)
# sd 10 (most frequent values are in the range 40-60, deviation is around 10)
mean(math)
median(math)
sd(math)

# Exercise 2. A student evaluation of a teacher is on a 1-5 Leichert scale. 
# Suppose the answers to the first 3 questions are given in this table:

evaluation = data.frame(Student=1:10,Ques1=c(3,3,3,4,3,4,3,4,3,4),Ques2=c(5,2,5,5,2,2,5,5,4,2),Ques3=c(1,3,1,1,1,3,1,1,1,1))

#1. Make a table of the results of question 1 and question 2 separately.
#2. Make a contingency table of questions 1 and 2.
#3. Make a stacked barplot of questions 2 and 3.

Q1Q2 <- evaluation[,c("Ques1","Ques2")]
table(Q1Q2)
barplot(table(Q1Q2))
questions <- as.matrix(evaluation[,2:4])


# Exercise 3. The built-in data set `mtcars` contains information about cars from a 1974 Motor Trend issue. 
# Load the data set (data(mtcars)) and try to answer the following:
# What are the variable names? (Try `names`.)
# what is the maximum mpg
# Which car has this?
# What are the first 5 cars listed?
# What horsepower (`hp`) does the “Valiant” have?
# What are all the values for the Mercedes 450slc (`Merc 450SLC`)?
# Make a scatterplot of cylinders (`cyl`) vs. miles per gallon (`mpg`). Fit a regression line. Is this a good candidate for linear regression?

# 1.  What are the variable names?
data(mtcars) # upload data
names(mtcars)
# "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"

# 2. What is the maximum `mpg`?
max(mtcars$mpg)
# 33.9

# 3. Which car has this?
row.names(mtcars)[which(mtcars$mpg==33.9)]
# "Toyota Corolla"

# following strings will do the same:
row.names(mtcars)[which.max(mtcars$mpg)]
row.names(mtcars)[which(mtcars$mpg==max(mtcars$mpg))]

# 4. What are the first 5 cars listed?
row.names(mtcars)[1:5]
# "Mazda RX4"         "Mazda RX4 Wag"     "Datsun 710"        "Hornet 4 Drive"    "Hornet Sportabout"

# 5. What are all the values for the Mercedes 450slc (`Merc 450SLC`)? Save it in the file "Merc.dat" with `write.table`.
mtcars[row.names(mtcars)=="Merc 450SLC",]
#              mpg cyl  disp  hp drat   wt qsec vs am gear carb
# Merc 450SLC 15.2   8 275.8 180 3.07 3.78   18  0  0    3    3

# Since row.names should be unique, this will do the same:
mtcars["Merc 450SLC",]
data_to_save <- mtcars[row.names(mtcars)=="Merc 450SLC",]
write.table(data_to_save, file="Merc.dat")

# 6. Make a scatterplot of cylinders (`cyl`) vs. miles per gallon (`mpg`). 
# Fit a regression line. Is this a good candidate for linear regression?
cor(mtcars$cyl,mtcars$mpg)
# -0.85
fit <- lm(mtcars$cyl ~ mtcars$mpg)
plot(mtcars$mpg,mtcars$cyl)
abline(fit,col="red")


# Exercise 4. You performed a genetic modification of bacteria. You wanted to estimate 
# how this modification influenced its life span and measured the lengths of life 
# for 25 bacteria. But your colleague told you that he already did this modification 
# and length of life was equal to 80 minutes. Is your colleague right? Can you trust 
# him or is he just trying to ruin your research?

life_span <- c(88.1182719073621, 94.8332872750113, 93.216098240428, 94.4837517244522, 89.0162824741825, 98.3549941533524, 90.9306505649222, 79.4738128933811, 95.7943525794675, 79.907550971115, 67.5608620077608, 84.1118666207429, 80.4405426387418, 93.8668348621264, 77.2212434214561, 68.1068633480655, 84.8906327374611, 75.2442966398898, 92.1865794241239, 92.1903595428325, 83.4280593426128, 81.6008659108239, 74.223954191764, 106.223060058316, 91.3518150269478)
t.test(life_span, mu=80)
# p-value = 0.003177 < 0.05 => we reject the null hypothesis of the mean of our sample 
# being equal to 80 at 0.05 sognificance level.
# Colleague was wrong, haha!

# Exercise 5. You have group of samples who recieved new drug and group of sample
# that were cured according to the standard protocol. You were told that 20 patients 
# with the disease were selected from the population and divided into 2 equal groups: 
# 10 and 10. You measure hormone levels that are known to be distributed normally, 
# and the lower level is the better. Is your new drug better?

treated_group <- c(9830.76249436958, 6161.37243638468, 13131.8353604025, 10284.6598357407, 9245.98726622183, 7175.32445354559, 11174.4236746503, 12437.8577787669, 7093.47847958366, 9925.07623800654)
control_group <- c(12253.9047358527, 11425.4583361033, 11659.6962460054, 11759.4030595056, 9671.33755357213, 13352.9689425818, 7974.08085172749, 11220.3927754223, 12885.6045226814, 13032.8169883379)
t.test(treated_group, control_group,alternative="less")
# p-value = 0.02584 < 0.05 => we reject the null hypothesis of means of two groups being equal 
# in favor of alternative hypothesis "mean of treated group is lower than of control group" (alternative="less").
# Drug is actually good!

