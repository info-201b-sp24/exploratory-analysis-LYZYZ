
data <- read.csv("movies.csv")
library(ggplot2)
library(tidyr)


data <- data.frame(lapply(data, function(x) if(is.character(x)) iconv(x, to = "UTF-8") else x))



scatter_plot <- ggplot(data, aes(x = votes, y = score)) +
  geom_point(color = "red") +
  labs(title = "Scatter Plot of Votes vs Score",
       x = "Votes",
       y = "Score") +
  theme_minimal()

