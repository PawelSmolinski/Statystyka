# Load necessary libraries
library(readr) # For reading the CSV file
library(ggplot2) # For data visualization

# Load the dataset
data <- read.csv("C:/Users/Pawel/OneDrive - University of Gdansk (for Students)/Teaching/Statystyka/Statystyka/Dane/Wprowadzenie/Frieren.csv")


# Ensure the variable names are correctly referenced
data <- data %>% mutate(Mana = as.numeric(Mana)) # Ensure Mana is numeric

# Calculate the mean and standard deviation of Mana
mean_mana <- mean(data$Mana, na.rm = TRUE)
sd_mana <- sd(data$Mana, na.rm = TRUE)

# Add an observation index (if not already present)
data <- mutate(data, Observation = 1:n())

# Plotting
ggplot(data, aes(x = Observation)) +
  geom_point(aes(y = Mana), color = 'blue', size = 2.5, alpha = 0.7) + # Points for each Mana observation
  geom_hline(yintercept = mean_mana, linetype = "solid", color = "black", size = 1, alpha = 0.7) + # Mean Mana line
  geom_segment(aes(xend = Observation, y = Mana, yend = mean_mana), linetype = "dotted", color = "black") + # Lines to mean
  geom_hline(yintercept = mean_mana + sd_mana, linetype = "dashed", color = "grey", size = 0.5) + # 1 SD above mean
  geom_hline(yintercept = mean_mana - sd_mana, linetype = "dashed", color = "grey", size = 0.5) + # 1 SD below mean
  scale_y_continuous(breaks = seq(floor(min(data$Mana)), ceiling(max(data$Mana)), by = 30)) +
  scale_x_continuous(breaks = NULL) +
  labs(x = NULL, y = "Mana", title = "Wartości many wokół średniej") +
  theme_classic() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

