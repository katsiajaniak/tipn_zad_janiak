policzGodziny <- function(biezacyRok, biezacyMiesiac, biezacyDzien, opoznienie)
{
  iloscGodzinWTymRoku <- (((12 - biezacyMiesiac) * 30 ) - (30 - biezacyDzien)) * 24
  iloscGodzinWPelnychLatach <- (2022 - biezacyRok - 1 + opoznienie) * 365 * 24
  iloscGodzinWOstatnimRoku <-  (6 * 30 * 24)
  return (iloscGodzinWPelnychLatach + iloscGodzinWTymRoku + iloscGodzinWOstatnimRoku)
  
}
policzGodziny(2018, 03, 07, 0)
