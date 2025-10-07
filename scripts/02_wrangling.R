
library(readr)

df <- read_csv("https://www.fema.gov/api/open/v2/DisasterDeclarationsSummaries.csv")

df

###


library(dplyr)

glimpse(df)

###

range(1, 4, 6, 22, 2002)

###

range(df$incidentBeginDate)


###

table(df$state)


###


counted <- count(df, state)

counted

###

counted <- count(df, state, name="disasters")

counted

###

arrange(counted, disasters)

###

arrange(counted, desc(disasters))


###

counted <- count(df, state, name="disasters")
sorted_count <- arrange(counted, desc(disasters))

sorted_count


###

df |>
  count(state, name="disasters") |>
  arrange(desc(disasters))

###

glimpse(df)


###
df |>
  filter(incidentType=="Hurricane")

###
df


###
df |>
  filter(incidentType=="Hurricane" | incidentType == "Fire")

###


disaster_list <- c("Flood", "Hail", "Typhoon")

df |>
  filter(incidentType %in% disaster_list)

###

colnames(df)


###

df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType)

###

df |>
  arrange(desc(declarationDate)) |>
  filter(incidentType=="Flood") |>
  select(state, declarationDate, designatedArea)

###

df |>
  arrange(desc(declarationDate)) |>
  filter(incidentType=="Flood") |>
  select(state, declarationDate, designatedArea) |>
  slice(1)

###

df |>
  arrange(desc(declarationDate)) |>
  filter(incidentType=="Flood") |>
  select(state, declarationDate, designatedArea) |>
  slice(2)

###

df |>
  arrange(desc(declarationDate)) |>
  filter(incidentType=="Flood") |>
  select(state, declarationDate, designatedArea) |>
  slice(1:5)

###

df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType)

###

df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate))

###

df |>
  summarize(disasters=n())

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate))

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  group_by(state) |>
  summarize(disasters=n())

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  group_by(incidentType) |>
  summarize(disasters=n())

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  group_by(state, incidentType) |>
  summarize(disasters=n())

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  group_by(state, incidentType, year) |> #ROTATE
  summarize(disasters=n())

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate))

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  mutate(year_group=case_when(
    year < 1960 ~ "1950 - 1959",
    year >=1960 & year < 1969 ~ "1960-1969",
    year >=1970 & year < 1979 ~ "1970-1979",
    year >=1980 & year < 1989 ~ "1980-1989",
    year >=1990 & year < 1999 ~ "1990-1999",
    year >=2000 & year < 2009 ~ "2000-2009",
    year >=2010 & year < 2019 ~ "2010-2019",
    TRUE ~ "2020+"
  ))

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  mutate(year_group=case_when(
    year < 1960 ~ "1950 - 1959",
    year >=1960 & year < 1969 ~ "1960-1969",
    year >=1970 & year < 1979 ~ "1970-1979",
    year >=1980 & year < 1989 ~ "1980-1989",
    year >=1990 & year < 1999 ~ "1990-1999",
    year >=2000 & year < 2009 ~ "2000-2009",
    year >=2010 & year < 2019 ~ "2010-2019",
    TRUE ~ "2020+"
  ))  |>
  group_by(year_group) |>
  summarize(disasters=n())

###
df |>
  select(femaDeclarationString, state,
         declarationDate, incidentType) |>
  mutate(year=year(declarationDate)) |>
  mutate(year_group=case_when(
    year < 1960 ~ "1950 - 1959",
    year >=1960 & year < 1969 ~ "1960-1969",
    year >=1970 & year < 1979 ~ "1970-1979",
    year >=1980 & year < 1989 ~ "1980-1989",
    year >=1990 & year < 1999 ~ "1990-1999",
    year >=2000 & year < 2009 ~ "2000-2009",
    year >=2010 & year < 2019 ~ "2010-2019",
    TRUE ~ "2020+"
  ))  |>
  group_by(year_group) |>
  summarize(disasters=n())

###
