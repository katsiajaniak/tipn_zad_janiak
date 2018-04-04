library (tidyverse)
library(readr)
movies <- read_csv("movies.csv")
View(movies)

#zadanie 5-2

filter(movies, year == 2005, Comedy == 1)

# zadanie 5-3

select(movies, title, year, budget) %>% arrange(desc(budget))

#zadanie 5-4

filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  arrange(desc(rating))

#zadanie 5-5

dramaty <- filter(movies, Drama == 1)
arrange(dramaty, desc(length))

#zadanie 5-6

mpaa_rating <- group_by(movies, mpaa) %>%
  summarise (srednia = mean(rating), odchylenie = mad(rating))

#zadanie 5-7

dobre_filmy <- filter(movies, votes > 100, budget > 3000000)
ggplot(data = dobre_filmy) +
  geom_point(mapping = aes(x = budget, y = rating, alpha = 3/10)) +
  geom_smooth(mapping = aes(x = budget, y = rating)) +
  labs(title = "Czy wyzszy budzet powoduje, ze film jest lepszy?")

#Zadanie 5-8
#1
krotkie_filmy <- filter(movies, length < 200 )
ggplot(data = krotkie_filmy) +
  geom_freqpoly(mapping = aes(length), bindwith = 1)


filter(movies, length < 200) %>%
  ggplot() +
  geom_freqpoly(mapping = aes(length), bindwith = 1)


Short <- filter(movies, length > 50)
mutate(is_short = ifelse(Short == 1, TRUE, FALSE)) %>%
  ggplot() +
  geom_freqpoly(mapping = aes(length), bindwith = 1, color = Short)
