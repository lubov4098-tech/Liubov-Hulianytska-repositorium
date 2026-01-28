#0511 początek

# Instalacja paczek
install.packages(c("tidyverse", "writexl"))

# --------------------------------------------
#Ładowanie paczek
library("tidyverse")

#Utworzenie wektora z 5 liczbami 
c(1, 21, 5, -8, 2.5)

#Utworzenia wektora z 5 liczbami i przypisanie wartości
element <- c(8, -3, 3.5, 13)

element

# Sprawdzenie struktury
str(element)
is.numeric(element)


is.character(element)

#wymuszenie typu
krewetka<-as.character(element)

krewetka
is.character(krewetka)

is.numeric(krewetka)

#Obiekty 3 wyrazy
renka<- c("piesek", "kot", "pancernik")

renka

is.Date(renka)

#Wymuszenie typu, ponownie
as.numeric(renka)

as.numeric(krewetka)

#Operacje matematyczne
#bez przepisanie wartości 
0/1001-pi+sqrt(15)+log(66)

# z przepisanie
ziemia<-median(c(100,50,0.5,-pi,log(8)))+mean(c(80,14,NA), na.rm=TRUE)

ziemia

#obiekt z wartościami NA
puszka<-c(NA, 67, log(pi), NA)

puszka

mean(puszka)

mean(na.omit(puszka))