#paczki
library(tidyverse)

#dane
ptaki <- penguins

#podsumowania
#dplyr::summarise
#policz średnią długość dzioba(bill_len) dla Chipstrap

srednia_dlugosc <- median("bill_len")

srednia_dlugosc

c(
mean(ptaki[ptaki$species == "Chinstrap", "bill_len"], na.rm= TRUE)
mean(ptaki[ptaki$species == "Gentoo", "bill_len"], na.rm= TRUE)
mean(ptaki[ptaki$species == "Adelie", "bill_len"], na.rm= TRUE)
)

#policz średnią masę dla samic na wyspie Torgersen
mean(ptaki[ptaki$island == "Torgersen" & ptaki$sex =="female", "body_mass"], na.rm= TRUE)

#podsomuwywanie z summarise()
#policz średnią długość dzioba (bill_len) w podziale na gat
dplyr::summarise(ptaki, bill_len_mean = mean(bill_len, ra.rm=TRUE), .by= species)

#policz średnią długość dzioba (bill_len) w podziale na gat i wyspy
c(
dplyr::summarise(ptaki, bill_len_mean = mean(bill_len, ra.rm=TRUE), .by= species)
dplyr::summarise(ptaki, bill_len_mean = mean(bill_len, ra.rm=TRUE), .by= island)
)
dplyr::summarise(ptaki, bill_len_mean = mean(bill_len, ra.rm=TRUE), .by= c(species, island))
dplyr::summarise(ptaki, bill_len_mean = mean(bill_len, ra.rm=TRUE))

#ile jest "wystąpień" czyli liczba N
#ile unikatowych N
dplyr::summarise(ptaki, liczba = dplyr::n_distinct(island), .by= species)

#policz średnią długość płetwy(flipper_len), median i kwantyl 0,5
dplyr::summarise(ptaki, flipper_len_mean= mean(flipper_len, na.rm=TRUE), flipper_len_median= median(flipper_len,na.rm=TRUE), flipper_len_quant= quantile(flipper_len,na.rm=TRUE))

#policz średnią długość płetwy(flipper_len), median i kwantyl 0,5 z podziałem na płeć
dplyr::summarise(ptaki, flipper_len_mean= mean(flipper_len, na.rm=TRUE), flipper_len_median= median(flipper_len,na.rm=TRUE), flipper_len_quant= quantile(flipper_len, 0.5,na.rm=TRUE), .by= sex)

#policz średnią bill_len, bill_dep, flipper_len, w podziale na rok
#przyda się dplyr::across()
dplyr::summarise(ptaki,dplyr::across(c(bill_len, bill_dep, flipper_len), \(kolumna)mean(kolumna,na.rm=TRUE)), .by= year)

#policz średnią i medianę dla kilku kolumn
dplyr::summarise(ptaki, dplyr::across(starts_with("bill"), list(mean =\(x) mean(x, na.rm=TRUE), list(mediana =\(x) median(x, na.rm=TRUE))))