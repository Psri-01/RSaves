hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)
# Step 3: Install and load the 'ggplot2' package (optional)
install.packages('ggplot2')
library(ggplot2)
# Step 4: Making a Bar Chart
#Previously, you used `geom_point` to make a scatter plot comparing lead time and number of children. Now, you will use `geom_bar` to make a bar chart in this code chunk: 
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel))
# Step 5: Diving deeper into bar charts
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))
# Step 6: Facets galore
#After reviewing the new charts, your stakeholder asks you to create separate charts for each deposit type and market segment to help them understand the differences more clearly.
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~market_segment)
#The `facet_grid` function does something similar. The main difference is that `facet_grid` will include plots even if they are empty. 
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_grid(~deposit_type)
#Now, you could put all of this in one chart and explore the differences by deposit type and market segment.
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~deposit_type~market_segment)
