library(tidyverse)
library(lubridate)
#To get the current date you can run the today() function. The date appears as year, month, and day. 
today()
#> [1] "2021-01-20"
#To get the current date-time you can run the now() function. Note that the time appears to the nearest second. 
now()
#> [1] "2021-01-20 16:25:05 UTC"
When working with R, there are three ways you are likely to create date-time formats: 
From a string
From an individual date
From an existing date/time object
R creates dates in the standard yyyy-mm-dd format by default. 
Date/time data often comes as strings. You can convert strings into dates and date-times using the tools provided by lubridate.
These tools automatically work out the date/time format. First, identify the order in which the year, month, and day appear in your dates. 
Then, arrange the letters y, m, and d in the same order. 
That gives you the name of the lubridate function that will parse your date. For example, for the date 2021-01-20, you use the order ymd:
ymd("2021-01-20")
When you run the function, R returns the date in yyyy-mm-dd format. 
#> [1] "2021-01-20"
It works the same way for any order. For example, month, day, and year. R still returns the date in yyyy-mm-dd format.
mdy("January 20th, 2021")
#> [1] "2021-01-20"
Or, day, month, and year. R still returns the date in yyyy-mm-dd format.
dmy("20-Jan-2021")
#> [1] "2021-01-20"
These functions also take unquoted numbers and convert them into the yyyy-mm-dd format.
ymd(20210120)
#> [1] "2021-01-20"
Creating date-time components
The ymd() function and its variations create dates. To create a date-time from a date, 
add an underscore and one or more of the letters h, m, and s (hours, minutes, seconds) to the name of the function:
ymd_hms("2021-01-20 20:11:59")
#> [1] "2021-01-20 20:11:59 UTC"
mdy_hm("01/20/2021 08:01")
#> [1] "2021-01-20 08:01:00 UTC"
Optional: Switching between existing date-time objects 
Finally, you might want to switch between a date-time and a date. 
You can use the function as_date() to convert a date-time to a date. For example, put the current date-time—now()—in the parentheses of the function. 
as_date(now())
#> [1] "2021-01-20"
