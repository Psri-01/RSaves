data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")
# Approach 1: Apply arrange() to the filtered dataset
filtered_tg <- filter(ToothGrowth, dose == 0.5)
arranged_tg <- arrange(filtered_tg, len)
View(arranged_tg)
# Approach 2: Using pipes to chain filter() and arrange()
library(dplyr)
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)
View(filtered_toothgrowth)
#Here we filtered the cols with a dose of 0.5 and arranged them by length

library(dplyr)
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = TRUE), .groups = "drop")
View(filtered_toothgrowth)

'''In this code, we specify len as the argument for the mean() function, telling it to calculate the mean of the len column for each group defined by the supp column. 
The na.rm = TRUE argument ensures that any missing values in the len column are ignored when computing the mean. 
The .groups = "drop" argument ensures that the grouping information is removed from the final result.'''
