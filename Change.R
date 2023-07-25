install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)
# Step 2: Import data
You can learn more about the dataset here:
https://www.kaggle.com/jessemostipak/hotel-booking-demand
#In the chunk below, you will use the `read_csv()` function to import data from a .csv in the project folder called "hotel_bookings.csv" and save it as a data frame called `hotel_bookings`:
hotel_bookings <- read_csv("hotel_bookings.csv")
## Step 3: Getting to know your data
head(hotel_bookings)
### Practice Quiz Answers 
1. How many columns are in this data set?
A: 45
B: 100
C: 32
D: 60
Answer: C. There are 32 columns in this data set. The `head()` function returns a preview of the data set, including the first six rows of data and as many columns as will fit on the screen. At the bottom left of the table, it states that it is previewing 1-4 of 32 columns. 
2. The 'arrival_date_month' variable is chr or character type data.  
A: True
B: False
Answer: A. The arrival_date_month variable is chr or character type data. Underneath the column name in the preview table, there is a description of the data type for each column. 

str(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)
# Manipulating your data
#Let's say you want to arrange the data by most lead time to least lead time because you want to focus on bookings that were made far in advance. You decide you want to try using the `arrange()` function and run the following command: 
arrange(hotel_bookings, lead_time)
#`arrange()`  automatically orders by ascending order, and you need to specifically tell it when to order by descending order, like the below code chunk below:
arrange(hotel_bookings, desc(lead_time))
# Practice Quiz Answers
What is the highest lead time for a hotel booking in this data set?
A: 737
B: 709
C: 629
D: 0
Answer: A. The highest lead time for a hotel booking in this data set is 737 days. After using the arrange() function to sort the hotel_bookings by lead time in descending order, you will notice that 737 is the first row. That is over two years in advance!

head(hotel_bookings)
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)
#Max and min lead times without using arrange()
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
min(lead_time)
#^This is a common error that R users encounter. 
mean(hotel_bookings$lead_time)
mean(hotel_bookings_v2$lead_time)

## Practice Quiz 
What is the average lead time?
A: 100
B: 45
C: 14
D: 104.0114
Answer: D. The average lead time is 104.0114 days. You were able to calculate this using the mean() function on the lead_time column in your data set. 

#You were able to report to your boss what the average lead time before booking is, but now they want to know what the average lead time before booking is for just city hotels. 
#They want to focus the promotion they're running by targeting major cities.
#Your first step will be creating a new data set that only contains data about city hotels. You can do that using the `filter()` function, and name your new data frame 'hotel_bookings_city':
hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
head(hotel_bookings_city)
mean(hotel_bookings_city$lead_time)
hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
head(hotel_summary)
