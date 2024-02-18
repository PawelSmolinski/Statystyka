# Wczytanie potrzebnych pakietów
library(ggplot2)
library(tidyverse)

# W miejsce ___ wpisz odpowiednie instrukcje kodu 

# Wczytaj dane
dane <- read.csv("___") # Podaj ścieżkę do pliku z danymi

# Podstawowa analiza danych
summary(___) # Podsumuj kolumnę z poziomem agresji przed terapią
summary(___) # Podsumuj kolumnę z poziomem agresji po terapii

# Oblicz średni wiek uczestników


# Oblicz maksymalny i minimalny poziom agresji przed terapią

# Stwórz histogram przedstawiający rozkład wieku uczestników
hist(dane$___, main = "___", xlab = "___", col = "___", border = "___")

# Stwórz histogram przedstawiający rozkład poziomu agresji przed terapią


# Stwórz wykres pudełkowy poziomu agresji przed i po terapii
boxplot(dane$___, dane$___)

#Stwórz wykres podełkowy poziomu rasizmu przed i po terapii 
# Wykres musi zawierać nazyw oraz tytuł 


# Przekształć danych do formatu długiego
dane_dlugie <- pivot_longer(___,
                            names_to = "___" # Zmienna porządkująca,
                            ___)

# Przekształć zmeinna porządkująca z pivot_longer do typu factor z określoną kolejnością
dane_dlugie$___ <- factor(dane_dlugie$___, 
                          levels = c("Agresja_Przed", "Agresja_Po", "Rasizm_Przed", "Rasizm_Po"))

# Stwórz wykres pudełkowy dla agresji przed i po terapii 
ggplot(dane_dlugie, aes(x = ___, y = ___, fill = ___)) +
  geom_boxplot() +
  ggtitle("___") +
  xlab("___") +
  ylab("___") +
  facet_wrap(~___)

# Stwórz wykres pudełkowy dla rasizmu przed i po terapii 

# Uruchom poniższy wykres:
ggplot(dane, aes(x = Agresja_Przed, y = Rasizm_Przed)) +
  geom_point() +  # Dodaje punkty danych z różnymi kolorami dla grup
  geom_smooth(method = "lm", se = FALSE, color = "black") +  # Dodaje linię regresji bez obszaru ufności
  labs(title = "Korelacja między agresją przed a rasizmem po", x = "Agresja przed", y = "Rasizm po") +
  theme_minimal()  # Używa minimalnego motywu wykresu

# Stwórz podbny wykres dla związku agresji z rasizmem po terapii
