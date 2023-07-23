> install.packages('palmerpenguins')
> library('palmerpenguins')
> install.packages('ggplot2')
> library('ggplot2')
Need help getting started? Try the R Graphics Cookbook:
https://r-graphics.org
> ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point()
Warning message:
Removed 2 rows containing missing values (`geom_point()`). 
> ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(color='red')
Warning message:
Removed 2 rows containing missing values (`geom_point()`). 
> ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species))
Warning message:
Removed 2 rows containing missing values (`geom_point()`). 
> ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(shape=species,color=species))
Warning message:
Removed 2 rows containing missing values (`geom_point()`). 
> ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(shape=species,color=species))+facet_wrap(~species)
Warning message:
Removed 2 rows containing missing values (`geom_point()`). 
> ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(shape=species,color=species))+facet_wrap(~species)+labs(title="Palmer Penguins: Body Mass vs Flipper Length")
Warning message:
Removed 2 rows containing missing values
(`geom_point()`). 
