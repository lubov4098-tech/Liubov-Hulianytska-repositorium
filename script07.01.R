#paczki
library(dplyr)
#wczytywanie danych z exela
library(readxl)

#ścieżka po pliku
plik <- "data/data_msu.xlsx"

#nazwy arkuszy w pliku excel
readxl::excel_sheets("data/data_msu.xlsx")
readxl::excel_sheets(plik)

#wczytywanie danych z 3 arkuszy
data_loi <- readxl::read_excel(plik, sheet= "loi")
data_elem <- readxl::read_excel(plik, sheet= "elemental")
data_bsi <- readxl::read_excel(plik, sheet= "bsi")

#dołacz dane elementarne do loi
dane_01 <- dplyr::left_join(data_loi, data_elem)

#dołacz dane bsi do loi
dane_02 <- dplyr::left_join(data_loi, data_bsi)
#to dało połączenie wg dwóch kolumn

#dołącz dane bsi do loi
dane_03 <- dplyr::left_join(data_loi, data_bsi, by= dplyr::join_by(sample_id))
 #zmień nazwe kolumny sample_id w ramce data_elem na probka_id)
data_elem <- dplyr::rename(data_elem, probka_id=sample_id)
# połacz ramki danych data bsi i data elem
dplyr::left_join(data_elem, data_bsi, by= dplyr::join_by(probka_id== sample_id))

#inner join- restrukcyjne łaczenie, tylko wiersz wspólna dla x i y
dane_04 <- dplyr::inner_join(data_bsi, data_loi, by= dplyr::join_by(sample_id))

#full join- łączenie wszystkiego jak leci po kluczu
#bsi i elem
#dołącz data_loi
dane_05 <- dplyr::full_join(data_bsi, data_elem, by= dplyr::join_by(sample_id== probka_id))
dane_05 <- dplyr::full_join(dane_05, data_loi) 
#łączenie filtrujące
#semi_join zachowaj wiersze x które są w y
dane_06 <- dplyr::semi_join(data_bsi, data_loi, join_by(sample_id))

#łączenie filtrujące
#anti join
dane_07 <- dplyr::anti_join(data_elem, data_bsi, by= dplyr::join_by(sample_id== probka_id))
