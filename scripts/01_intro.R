sample_df <- data.frame(id=c(1001,1002,1003,1004),
                        name=c("Steve", "Pam", "Jim", "Dwight"),
                        age=c(26, 65, 15, 7),
                        race=c("White", "Black", "White", "Hispanic"))

sample_df$race <- factor(sample_df$race)
sample_df$id <- factor(sample_df$id)
sample_df$name <- as.character(sample_df$name)

sample_df

###

sample_df$race


###

as.character(sample_df$race)


###
sample_df$name

###
as.factor(sample_df$race)

###
sample_df$race

###
as.character(sample_df$race)

###
sample_df$name


###
as.factor(sample_df$race)


###
sample_df$id

###
as.numeric(sample_df$id)

###
sample_df$id

###
as.numeric(sample_df$id)

###
as.numeric(as.character(sample_df$id))

###


###
vec1 <- c(1,4,6,8,10)
vec1

###
vec1[4]

###

patientID <- c(111, 208, 113, 408)
age <- c(25, 34, 28, 52)
sex <- c(1,2,1,1)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c(1,2,3,1)

patientdata <- data.frame(patientID, age, sex, diabetes, status)

###
patientdata[2,4]

###
patientdata[,4]

###
patientdata[,3:4]

###
patientdata[c("diabetes", "status")]


###
patientdata$age

###
mean(patientdata$age)

###
library(readr)

###

df <- read_csv("https://www.andrewbatran.com/data/Admissions_to_DMHAS_Addiction_Treatment_by_Town__Year__and_Month.csv")

df

###
write_csv(df_csv, "data/transformed_data.csv")

###
write_csv(df_csv, "data/transformed_data.csv", na="")

###
library(readxl)

###
df_xl <- read_excel("data/StatisticsSummary.xls", sheet=1)

##
View(df_xl)

df_xl <- read_excel("data/StatisticsSummary.xls", sheet=1, skip=2)

##
colnames(df_xl)

##
head(df_xl$Other Cases)

##
head(df_xl$`Other Cases`)

###
library(janitor)

df_xl <- clean_names(df_xl)

colnames(df_xl)

##

library(dplyr)

glimpse(df_xl)

