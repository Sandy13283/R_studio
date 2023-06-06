install.packages('tidyverse')
library(ggplot2)
library(palmerpenguins)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmerpenguins body_mass vs flipper_length",subtitle="Sample data of three penguins",caption="Data collected by MR.SANDY SIR")+
  annotate("text",x=220,y=3500,label="The gentoos are large",color="Orange",fontface="bold",size=4,angle=45)

p <- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmerpenguins body_mass vs flipper_length",subtitle="Sample data of three penguins",caption="Data collected by MR.SANDY SIR")+
  annotate("text",x=220,y=3500,label="The gentoos are large",color="Orange",fontface="bold",size=4,angle=45)

ggsave("The palmerpenguins.png")
