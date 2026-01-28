#paczka
library(tidyverse)

#dplyr
nieloty <- penguins

#podzielcie kolumny przez kolumnę
#podzielcie klasyczne
# bill_len podzielić przez bill_dep
nieloty$bill_len / nieloty$bill_dep #użycie dolara

nieloty[, 3] / nieloty [, 4] #indeksowanie przez pozycję

#pzrypisać wynik dzielenia do nowej kolumny w nielotach, kolumna dzielenie

nieloty$dzielenie <- nieloty$bill_len / nieloty$bill_dep

#przypisać wynik dzielenia do nowej kolumny
nieloty <- dplyr::mutate(nieloty, dzielenie_2 = bill_len / bill_dep)

#mutowanie ramki ze wskazaniem pozycji 
#nowa kolumna "dodawanie" - dodaj flipper_len do body_mass oraz nowa kolumna "logarytm" - zlogarytmuj bill_dep
nieloty<- dplyr::mutate(nieloty, dodawanie = flipper_len + body_mass, logarytm = log (bill_dep))

#podejrzeć ramke 
head(nieloty)

#dodaj kolumne pierwiastek z kolumny body_mass po kolumnie species
nieloty<-dplyr::mutate(nieloty, pierwiastek=sqrt(body_mass), after=species)

#mutowanie ramki poprzez wybór kolumn 
#dplyr::across()

#mutowanie na podstawie
#Zlogarytmuj wszystko pomiędzy bill_len i bill_dep oraz body_mass
dplyr::mutate(nieloty, dplyr::across(c(bill_len:bill_dep, body_mass),\(kolumna) log(kolumna)))

#Mutowanie na podstawie cechy kolumny 
#policzy pierwiastek ze wszystkich kolumn numerycznych
dplyr::mutate(nieloty,dplyr::across(dplyr::where(\(x)is.numeric(x)),\(x) sqrt(x)))

#Mutowanie z porzuceniem
#stworz kolumne "logarytm" na podstawie logarytmu z kolumny bill_dep i użyj argumentu .keep="none"
nieloty<-dplyr::mutate(nieloty, logarytm= log(bill_dep), .keep="none" )


#Praca dodmowa - to co wyżej, .keep="used" albo "unused" albo "all"