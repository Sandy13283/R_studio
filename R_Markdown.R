---
title: "Penguins Plot"
author: "Shriram"
date: "2023-06-01"
output: html_document
---

# Visualizing the Palmerpenguins data using R programming
Notes: Setting up enviroments by installing packages of 'tidyverse', 'ggplot2' and 'palmerpenguins'
```{r Installing Packages, include=FALSE}
install.packages('tidyverse')
library(tidyverse)

install.packages('ggplot2')
library(ggplot2)

install.packages('palmerpenguins')
library(palmerpenguins)

```

After loading packages we can move towards visualization.
```{r scatter plot Visualization of Penguins, warning=FALSE}
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,shape=sex),color='purple')+facet_wrap(~species)
```

```{r Jitter plot Visualization of Penguins, warning=FALSE}
ggplot(data=penguins)+geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g,shape=sex),color='orange')+facet_wrap(~species)
```
```{r jitter and smooth, warning=FALSE}
ggplot(data=penguins)+geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))
```
```{r}
ggplot(data=penguins)+geom_bar(mapping=aes(x=flipper_length_mm,fill=species))
```

