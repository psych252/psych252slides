# Load packages ---------------------------------------------------------------------
library("tidyverse")

# Load data  ------------------------------------------------------------------------
df.starwars = starwars

# Summarize: Practice 1 -------------------------------------------------------------

# Find out what the average `height` and `mass` (as well as the standard deviation) is from different `species` in different `homeworld`s. 
# Why is the standard deviation `NA` for many groups? 
df.starwars %>% 
  group_by(species, homeworld) %>% 
  summarize(mean_height = mean(height, na.rm = T),
            mean_mass = mean(mass, na.rm = T),
            sd_height = sd(height, na.rm = T),
            sd_mass = sd(mass, na.rm = T),
            n = n())



# Summarize: Practice 2 -------------------------------------------------------------

# Who is the tallest member of each species? What eye color do they have? The `top_n()` function or the `row_number()` function (in combination with `filter()`) will be useful here.
df.starwars %>% 
  arrange(species, desc(height)) %>% 
  group_by(species) %>% 
  # top_n(1, wt = species) %>% 
  filter(row_number() == 1) %>% 
  ungroup() %>% 
  select(species, name, eye_color)
# Reshaping: Practice 1 -------------------------------------------------------------

# generate data frame
df.practice2 = tibble(
  participant = 1:10,
  initial = c("AR", "FA", "IR", "NC", "ER", "PI", "DH", "CN", "WT", "JD"), 
  judgment_1 = c(12, 13, 1, 14, 5, 6, 12, 41, 100, 33),
  judgment_2 = c(2, 20, 10, 89, 94, 27, 29, 19, 57, 74),
  judgment_3 = c(2, 20, 10, 89, 94, 27, 29, 19, 57, 74)
)

# - Make the `df.practice2` data framey tidy (by turning into a long format).
# - Compute the z-score of each participants' judgments (using the `scale()` function).
# - Caluclate the mean and standard deviation of each participants' z-scored judgments. 
# - Notice anything interesting? Think about what [z-scoring](https://www.statisticshowto.datasciencecentral.com/probability-and-statistics/z-score/) does ... 

df.practice2 %>% 
  gather(key = "index", value = "judgment", -c(participant, initial)) %>% 
  group_by(participant) %>% 
  mutate(judgment = scale(judgment)) %>% 
  summarize(mean = mean(judgment),
            sd = sd(judgment))
# Joining: Practice 1 ---------------------------------------------------------------

set.seed(1)

df.judgments = tibble(
  participant = rep(1:3, each = 5),
  stimulus = rep(c("red", "green", "blue"), 5),
  judgment = sample(0:100, size = 15, replace = T)
)

df.information = tibble(
  number = seq(from = 0, to = 100, length.out = 5),
  color = c("red", "green", "blue", "black", "white")
)

# Create a new data frame called `df.join` that combines the information from both `df.judgments` and `df.information`. Note that column with the colors is called `stimulus` in `df.judgments` and `color` in `df.information`. At the end, you want a data frame that contains the following columns: `participant`, `stimulus`, `number`, and `judgment`.

df.join = df.judgments %>% 
  left_join(df.information,
            by = c("stimulus" = "color")) %>% 
  select(-judgment, everything(), judgment)