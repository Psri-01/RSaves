#you can use the c() function to store numeric data in a vector. 
c(2.5, 48.5, 101.5)
#To create a vector of integers using the c() function, you must place the letter "L" directly after each number.
c(1L, 5L, 15L)
#You can also create a vector containing characters or logicals. 
c(“Sara” , “Lisa” , “Anna”)
c(TRUE, FALSE, TRUE)

x <- c(33.5, 57.75, 120.05)
length(x)
#You can also check if a vector is a specific type by using an is function: is.logical(), is.double(), is.integer(), is.character(). In this example, R returns a value of TRUE because the vector contains integers. 
x <- c(2L, 5L, 11L)
is.integer(x)
#> [1] TRUE
In this example, R returns a value of FALSE because the vector does not contain characters, rather it contains logicals.
y <- c(TRUE, TRUE, FALSE)
is.character(y)
#> [1] FALSE
#You can name the elements of a vector with the names() function. As an example, let’s assign the variable x to a new vector with three elements. 
x <- c(1, 3, 5)
#use the names() function to assign a different name to each element of the vector. 
names(x) <- c("a", "b", "c")
x 
#> a b c 
#> 1 3 5
#An atomic vector can only contain elements of the same type. If you want to store elements of different types in the same data structure, you can use a list. 
Lists are different from atomic vectors because their elements 
can be of any type—like dates, data frames, vectors, matrices, and more. Lists can even contain other lists. 
list("a", 1L, 1.5, TRUE)
#Lists can contain other lists. If you want, you can even store a list inside a list inside a list—and so on. 
list(list(list(1 , 3, 5)))

Determining the structure of lists 
If you want to find out what types of elements a list contains, you can use the str() function. 
To do so, place the code for the list inside the parentheses of the function. When you run the function, R will display the data structure of the list by describing its elements and their types.
str(list("a", 1L, 1.5, TRUE))
We run the function, then R tells us that the list contains four elements, and that the elements consist of four different types: character (chr), integer (int), number (num), and logical (logi). 
#> List of 4
#>  $ : chr "a"
#>  $ : int 1
#>  $ : num 1.5
#>  $ : logi TRUE
z <- list(list(list(1 , 3, 5)))
str(z)
#> List of 1
#>  $ :List of 1
#>   ..$ :List of 3
#>   .. ..$ : num 1
#>   .. ..$ : num 3
#>   .. ..$ : num 5
The indentation of the $ symbols reflect the nested structure of this list. Here, there are three levels (so there is a list within a list within a list).  

Lists, like vectors, can be named. You can name the elements of a list when you first create it with the list() function:
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)
$`Chicago`
[1] 1
$`New York`
[1] 2
$`Los Angeles`
[1] 3
