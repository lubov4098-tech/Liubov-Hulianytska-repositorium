#ładowanie paczek na początku
library(tidyverse)

nowa_zelandia <- readr::read_csv("https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2024-financial-year-provisional/Download-data/annual-enterprise-survey-2024-financial-year-provisional.csv")

str(nowa_zelandia)

#wczytywanie z dysku
nowa_zelandia2 <- readr::read_csv("date/annual-enterprise-survey-2024-financial-year-provisional.csv")

#indeksowanie i operacje różne
#wybór kolumny danych

nowa_zelandia2

#wybór kolumny zrokiem
nowa_zelandia2[1]

nowa_zelandia2["Year"]

#wybór kolumny- wszystkie wiersze
nowa_zelandia2[, 1]

nowa_zelandia2[, "Year"]


#wybór kolumny- wszystkie wiersze, kolumna 1 i 3
nowa_zelandia2[, c(1,3)]

#wybór wierszy 2 do 100 - wszystkie kolumny
nowa_zelandia2[2:100, ]

#wybór kolumny z $
nowa_zelandia2$Industry_name_NZSIOC

#wybór jednej wartości z jednej kolumny
nowa_zelandia2[5, 10]

#wybór jednej wartości z jednej kolumny z $
nowa_zelandia2$Year[30]

#zamiana kolumny value z chr na num
#to nie zadziała bo[ zwraca tibble]
as.numeric(nowa_zelandia2[, 9])

#to zadziała
as.numeric(nowa_zelandia2$Value)

#nowa ramka danych na podstawie nowa zelandia
nowa_zelandia3 <- nowa_zelandia

# w ramce danych dokonaj zmiany wartości value z chr na num
nowa_zelandia3$Value <- as.numeric(nowa_zelandia3$Value)

mean(nowa_zelandia3$Value, na.rm= TRUE)

#tworzenie nowej kolumny dodaj Year do Value
nowa_zelandia3$suma <- nowa_zelandia3$Year + nowa_zelandia3$Value

#Nowa kolumna logarytm z roku
nowa_zelandia3$logarytm <- log(nowa_zelandia3$Year)

#usuwanie obiektów
rm(tutaj_nazwa)

#nowa ramka danych na podstawie nowa_zelandia3 bez dziwnych kolumn
nowa_zelandia4 <- nowa_zelandia3[, 1:10]
#alternatywne opcje
nowa_zelandia3[, c(1,2,3)]

nowa_zelandia3[, c("Year", "Value")]
