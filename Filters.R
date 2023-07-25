hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)
install.packages('ggplot2')
library(ggplot2)
ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))
#You decide to create a bar chart showing each hotel type and market segment. You use different colors to represent each market segment:
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel, fill = market_segment))
#You decide to use the facet_wrap() function to create a separate plot for each market segment: 
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel)) + facet_wrap(~market_segment)
# Step 5: Filtering
install.packages('tidyverse')
library(tidyverse)
#Use the `filter()` function to create a data set that only includes the data you want: 
#r filtering a dataset to just city hotels that are online TA
onlineta_city_hotels <- filter(hotel_bookings,(hotel=="City Hotel" & hotel_bookings$market_segment=="Online TA"))
#You can use the`View`() function to check out your new data frame:
View(onlineta_city_hotels)
#You can use the pipe operator (%>%) to do this in steps! 
#You name this data frame `onlineta_city_hotels_v2`:
#r filtering a dataset with the pipe
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
#This code chunk generates the same data frame by using the `View()` function:
#r view second dataframe
View(onlineta_city_hotels_v2)
## Step 6: Use your new dataframe
#Using the code for your previous scatterplot, replace `variable_name` in the code chunk below with either `onlineta_city_hotels` or `onlineta_city_hotels_v2` to plot the data your stakeholder requested:
#r creating a plot part two
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
