przeprowadz_grę <- function(plik_danych) {
  # Wczytanie danych
  Frieren <- plik_danych
  mean_mana <- mean(Frieren$Mana) # Średnia wartość many
  
  wyniki <- numeric(10) # Wektor na wyniki rund
  
  for (i in 1:10) {
    cat("Runda", i, "\n")
    # Losowanie całego wiersza, żeby dostać imię postaci i poziom many
    wylosowany_wiersz <- Frieren[sample(nrow(Frieren), 1), ]
    wylosowana_postac_mana <- wylosowany_wiersz$Mana
    wylosowana_postac_imie <- wylosowany_wiersz$Character
    
    zaklad_gracza <- as.numeric(readline(prompt = "Twój zakład na poziom many: "))
    cat("Zakład Pawła (średnia):", mean_mana, "\n")
    
    # Ujawnienie poziomu many i imienia postaci po złożeniu zakładów
    cat("Wylosowany poziom many to:", wylosowana_postac_mana, "(", wylosowana_postac_imie, ")\n")
    
    # Obliczenie, kto był bliżej
    blizej_gracz <- abs(wylosowana_postac_mana - zaklad_gracza)
    blizej_komputer <- abs(wylosowana_postac_mana - mean_mana)
    
    if (blizej_gracz < blizej_komputer) {
      cat("Wygrałeś tę rundę!\n")
      wyniki[i] <- 1
    } else if (blizej_gracz > blizej_komputer) {
      cat("Paweł wygrywa tę rundę!\n")
      wyniki[i] <- 0
    } else {
      cat("Remis!\n")
      wyniki[i] <- 0.5
    }
  }
  
  # Podsumowanie gry
  punkty_gracza <- sum(wyniki)
  cat("Twój wynik końcowy to:", punkty_gracza, "/ 10\n")
  if (punkty_gracza > 5) {
    cat("Gratulacje, dostajesz cukierka!\n")
  } else {
    cat("Niestety, tym razem bez cukierka. Spróbuj jeszcze raz!\n")
  }
}

# Rozpocznij grę
przeprowadz_grę(Frieren)
