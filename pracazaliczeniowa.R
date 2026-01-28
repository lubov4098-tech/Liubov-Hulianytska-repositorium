#ładowanie paczek na początku
library(tidyverse)

#wczytywanie danych z excela
library(readxl)

#wczytywanie z dysku
america <- readxl::read_excel("data/vote.xls")

#wybór kolumny
america[1]
america[c(3,4)]
america["state"]
america[,2]
america[3:13,1]
america$west[2]

as.numeric(america$school)
as.numeric(america[1,3])


mean(america$income, na.rm=TRUE)

america2 <- america[,c(1,3,4,5)]

#rename & rename_with
america <- dplyr::rename_with(america,\(x)toupper(x))
america <- dplyr::rename(america,VOTE2=VOTE)

#select
dplyr::select(america, dplyr::where(\(kolumna)is.numeric(kolumna)))
dplyr::select(america, STATE)
dplyr::select(america, -URBAN)

#filter
dplyr::filter(america, URBAN> 60)
dplyr::filter(america, SCHOOL==12.2)

#summarise





