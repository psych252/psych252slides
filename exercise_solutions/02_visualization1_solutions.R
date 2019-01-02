# Load packages -------------------------------------------------------------------------------

library("tidyverse")

# Set theme -------------------------------------------------------------------------------

theme_set(
  theme_classic()+ #set the theme 
    theme(text = element_text(size = 20)) #set the default text size
)

# Practice plot 1 -----------------------------------------------------------------------------

ggplot(diamonds, aes(x = depth, y = table))+
  geom_point()
# ggsave("figures/practice_plot1.png", width = 8, height = 6)

# Practice plot 2 -----------------------------------------------------------------------------

ggplot(diamonds, aes(x = clarity, y = price))+
  stat_summary(fun.y = "mean", geom = "bar")+
  stat_summary(fun.data = "mean_cl_boot", geom = "linerange")
# ggsave("practice_plot2.png", width = 8, height = 6)

# Practice plot 3 -----------------------------------------------------------------------------

ggplot(diamonds, aes(x = color, y = price, group = clarity, color = clarity))+
  stat_summary(fun.data = "mean_cl_boot", geom = "linerange", size = 1)+
  stat_summary(fun.y = "mean", geom = "line", size = 2)
# ggsave("figures/practice-plot3.png", width = 8, height = 6)

# Practice plot  4 ----------------------------------------------------------------------------

ggplot(diamonds, aes(x = color, y = price, group = cut, fill = cut))+
  stat_summary(fun.y = "mean", geom = "bar", position = position_dodge(width = 0.9), color = "black")+
  stat_summary(fun.data = "mean_cl_boot", geom = "linerange", position = position_dodge(width = 0.9), color = "black")+
  facet_grid(rows = vars(clarity))
# ggsave("figures/practice_plot4.png", width = 8, height = 6)

