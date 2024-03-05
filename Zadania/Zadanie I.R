# W miejsce ___ wpisz odpowiednie instrukcje kodu 

# Stwóż wektory dla każdej ze zmiennych
id = ___ # Uzupełnij wektorem id: 101, 102, 103, 104, 105
wiek = ___ # Uzupełnij wektorem wiek: 25, 30, 22, 28, 35
plec = ___ # Uzupełnij wektorem płeć: "Kobieta", "Mężczyzna", "Kobieta", "Mężczyzna", "Kobieta"
poziom_stresu = ___ # Uzupełnij wektorem poziom_stresu: 7, 4, 9, 6, 3
wynik_szczescia = ___ # Uzupełnij wektorem wynik_szczęścia: 8, 7, 6, 5, 9

# Połącz te wektory w zbiór danych o nazwie dane.
dane = data.frame(___)

# Uzyskaj dostęp i wydrukuj kolumnę wynik_szczęśliwości za pomocą operatora $.


# Uzyskaj dostęp do wyników 3 uczestnika (indeksowanie).
dane[___]

# Użyj indeksowania, aby uzyskać dostęp do wieku i płci pierwszego i czwartego uczestnika.
dane[___]

# Stwórz podzbiór danych zawierający tylko uczestników płci męskiej.
  # Podpowiedź: użyj symbolu logicznego: == 
mezczyzni = ___
print(mezczyzni)
# Znajdź wszystkich uczestników z poziomem stresu większym niż 5.
wysoki_stres = ___
print(___)
# Zmień nazwę drugiej i czwartej zmiennej w zbiorze danych odpowiednio na age i stress_score. 
names(dane)[___] = 
 

# Dodaj nową zmienną dobrostan jako różnicę pomiędzy wynik_szczęścia a poziomem_stresu
dane$___ = ___

# Oblicz średnią, maksimum oraz minimum nowo utworzonej zmiennej.



