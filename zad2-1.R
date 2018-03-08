kwartal_1 <- c("Styczeń", "Luty", "Marzec")
kwartal_2 <- c("Kwiecień", "Maj", "Czerwiec")
kwartal_3 <- c("Lipiec", "Sierpień", "Wrzesień")
kwartal_4 <- c("Październik", "Listopad", "Grudzień")
rok <- c(kwartal_1, kwartal_2, kwartal_3, kwartal_4)
rok [1:2]
rok [8:12]
rok [c(1,3,5,7,9,11)]
nchar (rok)
mean (nchar(rok))
sd(nchar(rok))
sd(nchar(rok))
zimowe_miesiace <- rok [c(1, 2, 3, 12)]
nchar (zimowe_miesiace)
mean(nchar(zimowe_miesiace))
sd(nchar(zimowe_miesiace))
subset(rok, endsWith(rok, "ec"), TRUE)
