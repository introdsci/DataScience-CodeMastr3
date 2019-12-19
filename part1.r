## -----------------------------------------------------

suppressMessages(library("tidyverse"))
suppressMessages(library("haven"))
# Add or change the strings to make a path to the file that you downloaded
path = file.path("Governance 2015.public.sav")
dataset = read_sav(path)


ndata <- nrow(dataset)



## -----------------------------------------------------

snippet <- dplyr::filter(dataset, sex == 1)
nmale <- nrow(snippet)
snippet <- dplyr::filter(snippet, q44 == 2)
snippet <- dplyr::select(snippet, sex, q44, everything())

nsnip <- nrow(snippet)

maleprop <- nmale/ndata
thisgroupprop <- nsnip/ndata
thisgroupofmalesprop <- nsnip/nmale



## -----------------------------------------------------
maleprop


## -----------------------------------------------------
thisgroupprop


## -----------------------------------------------------
thisgroupofmalesprop

