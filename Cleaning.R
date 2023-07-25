install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library(janitor)
install.packages("dplyr")
library(dplyr)
library(palmerpenguins)
library(tidyr)
summary(penguins)
glimpse(penguins)
head(penguins)
penguins %>% 
  select(species)
penguins %>% 
  select(-species)
penguins %>% 
  rename(island_new=island)
rename_with(penguins,toupper)
rename_with(penguins,tolower)
library(janitor)
clean_names(penguins)

library(tidyverse)
penguins %>% arrange(bill_length_mm)
#descending order
penguins %>% arrange(-bill_length_mm)
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm=mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm=max(bill_length_mm))
penguins %>% group_by(species,island) %>% drop_na() %>% summarize(max_bl=max(bill_length_mm),mean_blm=mean(bill_length_mm))
penguins %>% filter(species=="Adelie")

install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)
## Step 2: Import data
You can learn more about the dataset here:
https://www.kaggle.com/jessemostipak/hotel-booking-demand
#In the chunk below, you will use the `read_csv()` function to import data from a .csv in the project folder called "hotel_bookings.csv" and save it as a data frame called `bookings_df`:
bookings_df <- read_csv("hotel_bookings.csv")
## Step 3: Getting to know your data
head(bookings_df)
str(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)
#Use the `skim_without_charts()` function from the `skimr` package by running the code below:
skim_without_charts(bookings_df)
## Step 4: Cleaning your data
#Based on your notes you are primarily interested in the following variables: hotel, is_canceled, lead_time. Create a new data frame with just those columns, calling it `trimmed_df`.
trimmed_df <- bookings_df %>% select(hotel, is_canceled, lead_time)
#Rename the variable 'hotel' to be named 'hotel_type' to be crystal clear on what the data is about:
trimmed_df %>% select(hotel, is_canceled, lead_time) %>% rename(hotel_type = hotel)
#In this example, you can combine the arrival month and year into one column using the unite() function:
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
## Step 5: Another way of doing things
#You can also use the`mutate()` function to make changes to your columns. Let's say you wanted to create 
#a new column that summed up all the adults, children, and babies on a reservation for the total number of people. 
example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)
head(example_df)
#The total number of canceled bookings and the average lead time for booking - you'll want to start your code after the %>% symbol.
#Make a column called 'number_canceled' to represent the total number of canceled bookings. 
#Then, make a column called 'average_lead_time' to represent the average lead time. Use the `summarize()` function to do this in the code chunk below:
example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
head(example_df)
