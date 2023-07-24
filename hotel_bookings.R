## Step 1: Load packages
install.packages("tidyverse")
library(tidyverse)
## Step 2: Import data
#The data in this example is originally from the article Hotel Booking Demand Datasets (https://www.sciencedirect.com/science/article/pii/S2352340918315191)
#You can learn more about the dataset here:
#https://www.kaggle.com/jessemostipak/hotel-booking-demand
#In the chunk below, you will use the `read_csv()` function to import data from a .csv in the project folder called "hotel_bookings.csv" and save it as a data frame called `bookings_df`:
bookings_df <- read_csv("hotel_bookings.csv")
## Step 3: Inspect & clean data
head(bookings_df)
str(bookings_df)
colnames(bookings_df)
#If you want to create another data frame using `bookings_df` that focuses on the average daily rate, which is referred to as `adr` in the data frame, and  `adults`, you can use the following code chunk to do that:
new_df <- select(bookings_df, `adr`, adults)
#To create new variables in your data frame, you can use the `mutate()` function. This will make changes to the data frame, but not to the original data set you imported. That source data will remain unchanged. 
mutate(new_df, total = `adr` / adults)
## Step 4: Import your own data
#Now you can find your own .csv to import! Using the RStudio Cloud interface, import and save the file in the same folder as this R Markdown document. Then write code in the chunk below to read that data into `R`:
own_df <- read_csv("<filename.csv>")
