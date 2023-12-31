install.packages("tidyverse")
library(tidyverse)
library(ggplot2)
data("diamonds")
View(diamonds)
as_tibble(diamonds) #first 10 rows
head(diamonds)
str(diamonds)
glimpse(diamonds)
colnames(diamonds)
#Cleaning data
rename(diamonds, carat_new = carat)
rename(diamonds, carat_new = carat, cut_new = cut)
summarize(diamonds, mean_carat = mean(carat))
library(tidyverse)
mutate(diamonds,carat_2=carat*100)
#Visualizing data
ggplot(data = diamonds, aes(x = carat, y = price)) +  geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +  geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +  geom_point() + facet_wrap(~cut)
#creates a different plot for each type of cut. `ggplot2` makes it easy to do this with the `facet_wrap()` function

library(tidyverse)
names <- c('Peter','Jennifer','Julie','Alex')
age <- c(15,19,20,25)
people <- data.frame(names,age)
head(people)
str(people)
glimpse(people)
colnames(people)
mutate(people, age_in_20=age+20)

fruit <- c("Lemon", "Blueberry", "Grapefruit", "Mango", "Strawberry")
rank <- c(4,2,5,3,1)
fruit_ranks<-data.frame(fruit,rank)
View(fruit_ranks)

data("mtcars")
mtcars
read_csv(readr_example("mtcars.csv"))
library(readxl)
read_excel(readxl_example("type-me.xlsx"))
excel_sheets(readxl_example("type-me.xlsx"))
