# Load packages -------------------------------------------------------------------------------

library("tidyverse")

# Set theme -------------------------------------------------------------------------------

theme_set(
  theme_classic()+ #set the theme 
    theme(text = element_text(size = 20)) #set the default text size
)

# Practice plot 1 -----------------------------------------------------------------------------

ggplot(data = diamonds[1:10000, ], 
       mapping = aes(x = cut, y = price)) +
  geom_violin(scale = "count") +
  geom_point(
    alpha = 0.1,
    position = position_jitter(width = 0.1)
  ) +
  stat_summary(
    fun.y = "mean",
    shape = 21,
    geom = "point",
    fill = "blue",
    size = 5
  )
# ggsave("figures/practice_plot1.png", width = 8, height = 6)


  
