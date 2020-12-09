
library(dplyr)
library(tidyr)
df <- read.csv("raw/owid-covid-data.csv")


df <- select(df, iso_code, continent, location, date, total_deaths)

df <- df %>%
  spread(key = date, value = total_deaths) %>%
  slice(-1) %>%
  filter(location != "World") %>%
  


write.csv(df, file = "death_race.csv")
