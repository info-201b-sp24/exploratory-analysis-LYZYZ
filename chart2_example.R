
library(ggplot2)
library(dplyr)


movies <- read.csv("movies.csv")

genre_gross <- movies %>%
  filter(!is.na(gross)) %>%
  group_by(genre) %>%
  summarise(average_gross = mean(gross, na.rm = TRUE)) %>%
  arrange(desc(average_gross))

genre_gross_plot <- ggplot(genre_gross, aes(x = reorder(genre, average_gross), y = average_gross)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  coord_flip() +
  labs(title = "Average Gross Earnings by Genre",
       x = "Genre",
       y = "Average Gross Earnings") +
  theme_minimal()

print(genre_gross_plot)