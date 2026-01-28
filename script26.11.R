#Star wars
swars<-dplyr::starwars

#Wybór kolumny numerycznej z użyciem funkcji
dplyr::select(swars, dplyr::where(\(kolumna)is.numeric(kolumna)))

#Wybór kolumny tekstowej z "r" w nazwie
dplyr::select(swars, dplyr::where(\(kolumna1)is.character(kolumna1))&dplyr::contains("r"))

#Wybór kolumny numerycznej, której średnia jest wyższa niż 100
dplyr::select(swars, dplyr::where(\(kolumna2)is.numeric(kolumna2)&mean(kolumna2, na.rm=TRUE)>100))

#Wybór kolumny, 1) która w nazwie  z literą "r" 2)jest kolumną numeryczną 3)jej średnia pomiędzy 1 i 10
dplyr::select(swars, dplyr::contains("r")&dplyr::where(\(kolumna3)is.numeric(kolumna3)&mean(kolumna3, na.rm=TRUE)>70&mean(kolumna3, na.rm=TRUE)<90))

#Wybór wierszy
#dplyr::filter

#Filtrowanie przez spełnienie jednego, prostego warunku - wzrost równy =182cm
dplyr::filter(swars,height==182)

#Filtrowanie przez spełnienie jednego, prostego warunku - wzrost większy niż 70 cm
dplyr::filter(swars, height>70)

#Sprawdż wzrost mniejsz lub równy 70 cm
dplyr::filter(swars,height<=70)

#Sprawdż wzrost, gdzie jest poniżej 70 lub powyżej 200
dplyr::filter(swars,height<70|height>200)