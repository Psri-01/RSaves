library(tidyverse)
library(ggplot2)
head(diamonds)
str(diamonds)
glimpse(diamonds)
colnames(diamonds)
rename(diamonds, carat_new = carat)
rename(diamonds, carat_new = carat, cut_new = cut)
summarize(diamonds, mean_carat = mean(carat))
ggplot(data = diamonds, aes(x = carat, y = price)) +  geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +  geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +  geom_point() +  facet_wrap(~cut)

Exp:
library(tidyverse)
library(ggplot2)
# Step 2: Viewing data
#Many of the `tidyverse` packages contain sample datasets that you can use to practice your `R` skills. The `diamonds` dataset in the `ggplot2` package is a great example for previewing `R` functions. 
#Because you already loaded this package in the last step, the `diamonds` dataset is ready for use.
#One common function you can use to preview the data is the `head()` function, which displays the columns and the first several rows of data. 

head(diamonds)
#The `str()` and `glimpse()` functions will both return summaries of each column in your data arranged horizontally.
str(diamonds)
glimpse(diamonds)
#Another simple function that you may use regularly is the `colnames()` function. It returns a list of column names from your dataset. 
#After running the code chunk, you may have noticed a number in brackets. This number helps you count the number of columns in your dataset. 
#If you have data with lots of columns and `colnames()` prints the results on multiple lines, each line will have a number in brackets at the start of the line indicating what number column that is. 
#So, for example, "carat" is the first column in the `diamonds` dataset. 
#On the second line, there is the number seven in brackets; "price" is the seventh column. 
## Step 3: Cleaning data
rename(diamonds, carat_new = carat)
rename(diamonds, carat_new = carat, cut_new = cut)
#Another handy function for summarizing your data is `summarize().` You can use it to generate a wide range of summary statistics for your data. 
#For example, if you wanted to know what the mean for `carat` was in this dataset, you could run the code in the chunk below:
summarize(diamonds, mean_carat = mean(carat))
## Step 4: Visualizing data
#To build a visualization with `ggplot2` you layer plot elements together with a `+` symbol. 
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()
#The code above takes the `diamonds` data, plots the carat column on the X-axis, the price column on the Y-axis, and represents the data as a scatter plot using the `geom_point()` command. 
#if you wanted to change the color of each point so that it represented another variable, such as the cut of the diamond, you can change the code like this:
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point()
#When you are trying to represent many different aspects of your data in a visual, it can help to separate out some of the components. 
#For example, you could create a different plot for each type of cut. `ggplot2` makes it easy to do this with the `facet_wrap()` function:
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +  geom_point() +  facet_wrap(~cut)
