# Part 1: Blood Pressure 1

library(dplyr)
library(NHANES)

# Fill in the missing parts in the following line of code
tab <- NHANES |> filter(AgeDecade==" 20-29" & Gender=="female")




# Part 2: Blood Pressure 2

library(dplyr)
library(NHANES)
data(NHANES)

# Fill in the missing parts in the following line of code
ref <- NHANES |>
  filter(AgeDecade == " 20-29" & Gender == "female") |>
  summarize(average=mean(BPSysAve, na.rm = TRUE), standard_deviation=sd(BPSysAve, na.rm = TRUE))




# Part 3: Summarizing Averages

library(dplyr)
library(NHANES)

# Fill in the missing part to extract the average
ref_avg <- NHANES |>
  filter(AgeDecade == " 20-29" & Gender == "female") |>
  summarize(average = mean(BPSysAve, na.rm = TRUE)) |> 
  pull(average)




# Part 4: Min and max

library(dplyr)
library(NHANES)

# Complete the following code and report the minimum and maximum value for the
# group of women aged 20-29 years. Again, use filter and summarize connected
# through the pipe |>. The min and max functions can be used to obtain the
# values you want. Inside summarize, save the minimum and maximum value of the
# systolic blood pressure as minbp and maxbp.
NHANES |>
  filter(AgeDecade == " 20-29" & Gender == "female") |>
  summarize(minbp=min(BPSysAve, na.rm = TRUE), maxbp=max(BPSysAve, na.rm = TRUE))





# Part 5: Group_by

library(dplyr)
library(NHANES)
data(NHANES)

# Complete the following code, use the filter, group_by, summarize and
# the pipe |> to calculate the average and standard deviation of the systolic
# blood pressure for women in each age group separately.
# Inside summarize, save the mean and standard deviation of the
# systolic blood pressure (BPSysAve) as average and standard_deviation,
# respectively.
NHANES |>
  filter(Gender == "female" & !is.na(AgeDecade)) |>
  group_by(AgeDecade) |>
  summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE))



# Part 6: Group_by example 2

library(dplyr)
library(NHANES)

# Calculate the mean and standard deviation of systolic blood pressure
# for men in each age group separately, using the same
# methods than in the previous exercise. Save the average and deviation
# standard systolic blood pressure (BPSysAve) as average and
# standard_deviation, respectively.
NHANES |>
  filter(Gender=="male" & !is.na(AgeDecade)) |>
  group_by(AgeDecade) |>
  summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE))



# Part 7: Group_by example 3

library(dplyr)
library(NHANES)

# Fill in the missing code, create a single summary table for the average
# and standard deviation of systolic blood pressure using group_by
# (AgeDecade, Gender). Your code inside summarize should stay the same as
# in the previous exercises and you must use the names average and
# standard_deviation of the variables.

NHANES |> filter(!is.na(AgeDecade) & !is.na(Gender)) |>
  group_by(AgeDecade, Gender) |>
  summarize(average = mean(BPSysAve, na.rm=TRUE), standard_deviation = sd(BPSysAve, na.rm = TRUE))





# Part 8: Arrange

library(dplyr)
library(NHANES)

# Calculate the mean and standard deviation for each of the inputs
# of Race1 for men in the decade between the ages of 40 and 49. Remember
# that this age group is coded 40-49, which includes a space
# before 40. Sort the resulting table from the lowest average to the
# highest average systolic blood pressure. Use the filter functions,
# group_by, summarize, arrange and the pipe |> to do this in a single line
# of code. Inside summarize, save the mean and standard deviation
# of systolic blood pressure as average and standard_deviation.
NHANES |> 
  filter(Gender == "male" & AgeDecade == " 40-49") |>
  group_by(Race1) |> 
  summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE)) |>
  arrange(average)
