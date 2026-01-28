#"pojemnik" na elementy o różnym rodzaju 
#list(element_1=c(1:2),element_2="mój tekst")

#sklejanie wekterów

# Sklejenie wartości liczbowych
#c(1,2,3.5)

# Sklejenie tekstu
#c("a","b", "DE")

# Sklejenie wartości logicznych
#c(FALSE,1)

#Hierarchia typów 

 #logical   -   integer  -  numeric    - complex  -  charakter
#true/false     1,9,2(L)   3.23,2,91,2    10+2i     "Hello","23"

#Indeksowanie 
#R indeksuje od 1(w przeciwieństwie do Pythona = 0)

# Wybór trzeciego elementu
#wektor[3]

# Nadpisanie wektora
#wektor...

#wybór 3 i 2 elementu 
#wektor c(2,3)

##Lista
#lista<-list(element_1="tekst",element_2=1,element_3=TRUE)

#Wybór[]
#lista[1]
#wybór []
#lista[[1]]

#wybór
#lista$element

#Ramka danych przechowuje informacje jako zmienne, jak arkusz w excelu 
#ramka<-data.frame(element_1="tekst",element2=1,element3=TRUE)

#Ramka nowoczesna
#Ramka<-tible::tible(element_1="tekst",element2=1,element3=TRUE)

#funkcje składają się z nazwy i argumentów 
#funkcja(nazwany_argument_1=wartość_x,wartość_y,...)

#liczenie Sredniej z 1,2,...,9,10
#mean(c(1:10),na.rm=TRUE)
#(na- not aviable)

#Wymuszenie typu 
#sprawdzenie struktury i typu obiektów 
#str()
#is.xxx()

# wymuszenie typu/koercja
#as.xxx()

#Potokowanie (pipe)

# Zaawansowane potokowanie, starszy tyo oparty o paczkę 
#{magrittr}%>%

#Potokowanie zawartew składni R
#{base}|>:

#Anonimowe funkcje lambda - {\()()}
#utworzenie obiektu i średnia
#utworzenie sekwencji
#obiekt<-seq(1990,2024,2) |>
   #policzenie średniej z użyciem anonimowej funkcji 
#{(i)mean(i)}()