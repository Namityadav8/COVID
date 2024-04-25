# Load the dataset
ipl_data <- read.csv("data.csv", stringsAsFactors = FALSE)

# View the structure of the dataset
str(ipl_data)

# Summary statistics
summary(ipl_data)

# View the first few rows of the dataset
head(ipl_data)

# Check for missing values
any(is.na(ipl_data))

# Example: Plotting runs scored by each team over the years
library(ggplot2)
ggplot(ipl_data, aes(x = season, y = win_by_runs, color = winner)) +
  geom_point() +
  labs(title = "Winning Margin of IPL Teams Over the Seasons", x = "Season", y = "Winning Margin") +
  theme_minimal()

# Example: Calculate average winning margin by each team
average_winning_margin <- aggregate(win_by_runs ~ winner, data = ipl_data, FUN = mean)

# Display average winning margin
print(average_winning_margin)
