# Minimum Wage Op-Ed Plot Replication
# V. Ramos and E. Suguitan
# 13 Feb 2023

#Load Libraries
#setwd("~/PLRP")
library(tidyverse)
library(ggthemes)
library(hrbrthemes)

### data
plotdata <- read.csv("MW_plot.csv", fileEncoding = 'UTF-8-BOM')

### plot
plotdata %>%
  ggplot()+
  geom_line(aes(x = year, y = wage_growth,color = "YoY real wage growth"), size = 2)+
  geom_line(aes(x = year, y = infl,color = "Annual inflation rate"), size = 2)+
  theme_ipsum()+
  theme(plot.title = element_text(size=11)) +
  labs(title = "Minimum wages and inflation rate in NCR (1995-2022)",
       subtitle = "using 2018 prices",
       x = " ", y = " ",color = " ")+
  geom_hline(yintercept = 0)+
  scale_color_manual(values = colors)+
  scale_x_continuous(breaks = seq(1995, 2022, by = 2))+
  theme(axis.text.x = element_text(angle = 90))

