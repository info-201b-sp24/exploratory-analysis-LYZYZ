ratings_vs_gross <- movies %>%
  filter(!is.na(score) & !is.na(gross)) %>%
  ggplot(aes(x = score, y = gross)) +
  geom_point(alpha = 0.3, color = "purple") +
  geom_smooth(method = "lm", color = "red") +
  scale_y_log10() +
  labs(title = "Movie Ratings vs. Gross Earnings",
       x = "Rating",
       y = "Gross Earnings (log scale)") +
  theme_minimal()

print(ratings_vs_gross)