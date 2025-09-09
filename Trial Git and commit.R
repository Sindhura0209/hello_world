#Build a simple graph

#Load Packages
library(ggplot2)
library(EVR628tools)

#Load data
data("data_heatwaves")

#Build a plot
p<- ggplot(data = data_heatwaves,
           mapping = aes(x=year, y=temp_mean,
                         group = paste(fishery, eu_rnpa))) +
  
  geom_line() +
  facet_wrap(~ fishery, ncol = 2, scales = "free_y")

p

#Export my plot
ggsave(plot = p,
       filename = "results/img/my_first_plot.png")