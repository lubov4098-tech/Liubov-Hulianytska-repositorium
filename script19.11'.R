#początek pracy
library("tidyverse")

#ładowanie danych, które sá w R
iris <- iris

#średnia długość płatka(petal.len)
srednia.platka <- mean(iris$Petal.Length)

srednia.platka

#Mediana z szerokości sepal(odwołanie do pozycji)
mediana_szerokosci <- median(iris[, 2])

mediana_szerokosci

#średnie dla gatunków
#średnia długość płatka setosa
platek_setosa <- mean(iris[1:50, 3])

platek_setosa

platek_setosa2 <- mean(iris[iris$Species == "setosa", 3])

platek_setosa2

platek_setosa == platek_setosa2

platek_setosa3 <-  mean(iris[c("tuta-pozycje-wierszy"), 3])

#podsumowanie danych
summary(iris)

#nowa kolumna-wynik działania
iris2 <- iris

iris2$nowa_kolumna <- iris2$Sepal.Length + iris$Sepal.Width

iris2$nowa_kolumna

#początek z dplyr----
#funkcja select- wybieranie kolumn

#wybieranie za pomocą nazwy kolumny
dplyr::select(iris, Species)

#wybieranie za pomocą nazwy więcej kolumn
dplyr::select(iris, c(Sepal.Length, Petal.Length, Species))

dplyr::select(iris, Sepal.Length, Petal.Length, Species)

#wybieranie za pomocą nazwy więcej kolumn
dplyr::select(iris, Species, Petal.Width, Petal.Length, Sepal.Length, Sepal.Width)

#wybieranie "tego czego nie chcemy"
dplyr::select(iris,-Species)

#wybór wszystkiego
dplyr::select(iris, dplyr::contains(match = "Petal"))

#zawiera kropkę w nazwie
dplyr::select(iris, dplyr::contains("."))

#zaczyna się na Pet
dplyr::select(iris, dplyr::starts_with("Pet"))

#kończy się 
dplyr::select(iris, dplyr::ends_with("dth"))

#zaczyna się oraz kończy się
dplyr::select(iris, dplyr::starts_with("Pet") & dplyr::ends_with("dth"))
dplyr::select(iris, dplyr::starts_with("Pet") | dplyr::ends_with("dth"))

#zanegowanie po tekście
dplyr::select(iris, -dplyr::contains("Petal"))

dplyr::select(iris, !dplyr::contains("Petal"))
