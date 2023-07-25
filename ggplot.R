library(palmerpenguins)
data("penguins")
library(ggplot2)
View(penguins)
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))
ggplot(data=penguins)+geom_boxplot(mapping = aes(x=flipper_length_mm,y=body_mass_g))
ggplot(data=penguins)+geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g),method = lm)
ggplot(data=penguins)+geom_rug(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))
ggplot(data=penguins)+geom_tile(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))
#alpha is a good option when you have a dense plot with lots of data points.
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,alpha=species))
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,size=species,color=species))
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g),color='purple')
ggplot(data=penguins)+geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))
ggplot(data=penguins)+geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g),color='cyan')
ggplot(data=penguins)+geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype=species))
ggplot(data=penguins)+geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+facet_wrap(~species)
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+facet_wrap(sex~species)
#the tilde operator is used to define the relationship between dependent variable and independent variables 
#in a statistical model formula. The variable on the left-hand side of tilde operator is the dependent variable 
#and the variable(s) on the right-hand side of tilde operator is/are called the independent variable(s). 
#So, tilde operator helps to define that dependent variable depends on the independent variable(s) that are on the right-hand side of tilde operator.
#In the case of this example, the independent variable at the end of the syntax line would be species, and the dependent variable in this case is facet_wrap. 
#The facet_wrap is actually a function that is being called to separate and distribute the independent data within the plot. 
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+labs(title='Palmer Penguins: Body mass vs Flipperlength')
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+labs(title='Palmer Penguins: Body mass vs Flipperlength',
                                                                                                      subtitle = 'Sample of 3 penguin species',caption = "Data collected by Dr.Kristen")
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+labs(title='Palmer Penguins: Body mass vs Flipperlength',
                                                                                                      subtitle = 'Sample of 3 penguin species',caption = "Data collected by Dr.Kristen")+
  annotate("text",x=215,y=3500,label="The Gentoos are the largest",color='navyblue',
           fontface="bold",size=4.5,angle=25)
p<-ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+labs(title='Palmer Penguins: Body mass vs Flipperlength',
                                                                                                         subtitle = 'Sample of 3 penguin species',caption = "Data collected by Dr.Kristen")
p+annotate("text",x=218,y=3500,label="The Gentoos are the largest",color='gray')

data("diamonds")
ggplot(data=diamonds)+geom_bar(mapping = aes(x=cut,fill=cut)) #fill in place of color
ggplot(data=diamonds)+geom_bar(mapping = aes(x=cut,fill=clarity))
ggplot(data = diamonds)+geom_bar(mapping = aes(x=color,fill=cut))+facet_wrap(~cut)
ggsave("Clarity in diamonds.png")
