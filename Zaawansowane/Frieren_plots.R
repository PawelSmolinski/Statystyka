# Ensure ggplot2 is installed and loaded
library(ggplot2)

# Assuming 'Frieren' is your dataset

Frieren <- read.csv("C:/Users/Pawel/OneDrive - University of Gdansk (for Students)/Teaching/Statystyka/Statystyka/Dane/Wprowadzenie/Frieren_census.csv")

# Histogram of Mana Distribution
ggplot(Frieren, aes(x = Mana)) +
  geom_histogram(binwidth = 6, fill = "#339FFF", color = "black") +
  labs(title = "Histogram Rozkładu Many", x = "Mana", 
       y = "Liczba postaci z danym poziomem many") +
  scale_x_continuous(breaks = seq(from = floor(0), 
                                  to = ceiling(200), 
                                  by = 20))+
  theme_minimal()

# Histogram of Power Level Distribution
ggplot(Frieren, aes(x = PowerLevel)) +
  geom_histogram(binwidth = 5, fill = "#F33D3D", color = "black") +
  labs(title = "Rozkład siły wśród postaci", x = "Siła Postaci", 
       y = "Liczba postaci z danym poziomem siły") +
  scale_x_continuous(breaks = seq(from = floor(20), 
                                  to = ceiling(180), 
                                  by = 20))+
  theme_minimal()

# Barplot showing the proportions of each race
ggplot(Frieren, aes(x = factor(Race, levels = names(sort(table(Race), 
                                                         decreasing = TRUE))),
                    fill = Race)) +
  geom_bar(color = "black") +
  labs(title = "Wykres słupkowy z podziałem na rasy", x = "Rasa", y = "Ilość postaci z danej rasy") +
  theme_minimal() +
  theme(legend.title = element_blank())

# Barplot showing classes
ggplot(Frieren, aes(x = factor(Class, levels = names(sort(table(Class), decreasing = TRUE))), fill = Class)) +
  geom_bar(color = "black") +
  scale_fill_brewer(palette = "Set3") +  # Using a Color Brewer palette
  labs(title = "Wykres słupkowy z podziałem na klasy", x = "Klasa", y = "Ilość postaci według klasy") +
  theme_minimal() +
  theme(legend.title = element_blank())  # Optional: Remove the legend title if desired


# Scatterplot showing a correlation between mana and their power level
ggplot(Frieren, aes(x = Mana, y = PowerLevel)) +
  geom_point(size = 3, alpha = 0.8) +
  labs(title = "Wykres korelacji pomiędzy maną a siłą postaci", 
       x = "Mana", y = "Poziom Siły") +
  scale_x_continuous(breaks = seq(from = floor(20), 
                                  to = ceiling(180), 
                                  by = 20))+
  theme_minimal()


# Scatterplot showing a correlation between mana and their power level
ggplot(Frieren, aes(x = Mana, y = PowerLevel, color = Class)) +
  geom_point(size = 3, alpha = 0.8) +
  labs(title = "Wykres korelacji pomiędzy maną a siłą postaci", 
       x = "Mana", y = "Poziom Siły",
       color = "Klasa") +
  scale_x_continuous(breaks = seq(from = floor(20), 
                                  to = ceiling(180), 
                                  by = 20))+
  theme_minimal() +
  scale_color_brewer(palette = "Set1")

# Scatterplot showing a correlation between mana and their power level
ggplot(Frieren, aes(x = TrainingHours, y = PowerLevel, color = Race)) +
  geom_point(size = 3, alpha = 1) +
  labs(title = "Wykres korelacji pomiędzy treningiem a siłą postaci", 
       x = "Godziny poświęcone na trening", y = "Poziom Siły",
       color = "Rasa") +
  scale_x_continuous(breaks = seq(from = floor(1), 
                                  to = ceiling(20), 
                                  by = 3))+
  theme_minimal() +
  scale_color_brewer(palette = "Spectral")

# Adjust this line to use your variable for race

ggplot(Frieren, aes(x = TrainingHours, y = PowerLevel)) +
  geom_point(size = 2.5,aes(color = Race)) +  # Color by race, though redundant with faceting
  geom_smooth(method = "lm", se = FALSE, aes(group = 1), color = "black") +  # Common trend line color
  labs(title = "Wykres korelacji pomiędzy godzinami treningu a poziomem siły", 
       x = "Godziny treningu", y = "Poziom Siły") +
  scale_x_continuous(breaks = seq(from = floor(1), to = ceiling(20), by = 3)) +
  theme_test() +
  scale_color_brewer(palette = "Set1") +
  facet_wrap(~ Race) +
  theme(legend.position = "none")# Separate plot for each race



# Boxplots showing differences in mana by race
ggplot(Frieren, aes(x = Race, y = Mana, fill = Race)) +
  geom_boxplot() +
  labs(title = "Różnice w poziomie many pomiędzy rasami", 
       x = "Rasa", y = "Mana") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set1")+
  theme(legend.title = element_blank())

# Boxplots showing differences in mana by class
ggplot(Frieren, aes(x = Class, y = Mana, fill = Class)) +
  geom_boxplot() +
  labs(title = "Różnice w manie pomiędzy klasami", 
       x = "Klasa", y = "Mana") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")+
  theme(legend.title = element_blank())

ggplot(Frieren, aes(x = Class, y = PowerLevel, fill = Class)) +
  geom_boxplot() +
  labs(title = "Różnice w poziomie siły pomiędzy klasami", x = "Klasa", y = "Poziom siły") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")+
  theme(legend.title = element_blank())

# Frieren census

# Histogram of Mana Distribution
ggplot(Frieren, aes(x = Mana)) +
  geom_histogram(binwidth = 6, fill = "#339FFF", color = "black") +
  labs(title = "Histogram Rozkładu Many", x = "Mana", 
       y = " ") +
  scale_x_continuous(breaks = seq(from = floor(0), 
                                  to = ceiling(200), 
                                  by = 20)) +
  xlim(c(NA, 200)) + 
  scale_y_continuous(labels = NULL) +
  theme_classic()

