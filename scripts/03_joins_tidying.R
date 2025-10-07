
x <- data.frame(id=c(1,2,3), x=c("x1", "x2", "x3"))

x


###

y <- data.frame(id=c(1,2,4), y=c("y1", "y2", "y4"))

y

###


library(dplyr)

left_join(x, y)

###

x <- data.frame(id=c(1,2,3), x=c("x1", "x2", "x3"))

x

###

y <- data.frame(new_id=c(1,2,4), y=c("y1", "y2", "y4"))

y

###

left_join(x, y, by=c("id"="new_id"))

###

x <- data.frame(id=c(1,2,3),
                x=c("x1", "x2", "x3"))

x

y <- data.frame(id=c(1,2,4,2),
                y=c("y1", "y2", "y4", "y5"))

y

###

left_join(x, y)

###


library(stringr)

test_text <- "tHiS iS A rANsOM noTE!"

###

str_to_upper(test_text)


###

str_to_lower(test_text)


###

str_to_title(test_text)


###

test_text <- "  trim both   "

test_text

###

str_trim(test_text, side="both")

###

str_trim(test_text, side="left")

###

str_trim(test_text, side="right")


###

messy_text <- "  sometimes  you get   this "


###
str_squish(messy_text)

###

text_a <- "one"

text_b <- "two"

text_a

text_b

###

str_c(text_a, text_b)

###

str_c(text_a, text_b, sep="-")

###

str_c(text_a, text_b, sep=" and a ")


###
str_c(text_a, " and a ", text_b)


###

test_text <- "Hello world"

test_text

###

str_sub(test_text, start = 6)

###


str_sub(test_text, end = 5) <- "Howdy"

test_text

###

cn <- "Kemp County, Georgia"

cn

str_replace(cn, " County, .*", "")

###


library(readr)
messy_numbers <- c("$5.00", "9,343,200", "6.0%")

messy_numbers

###
parse_number(messy_numbers)

###

df <- data.frame(id=c(1,2), x=c("a", "b"),
                 y=c("c", "d"), z=c("e", "f"))

df

###


library(tidyr)

df %>%
  pivot_longer(cols=x:z,
               names_to="key",
               values_to="val")

###

df %>%
  pivot_longer(cols=2:4,
               names_to="key",
               values_to="val")


###

df <- data.frame(state=c("TX", "NY", "FL"),
                 ducks=c(23, 39, 47),
                 fish=c(6,30,20),
                 birds=c(99,3,64))

###

df

###

df %>%
  pivot_longer(cols=ducks:birds,
               names_to="animals",
               values_to="total")

###

df

###

df %>%
  pivot_longer(cols=2:4,
               names_to="animals",
               values_to="totals")

###

df <- data.frame(state=c("TX", "NY", "FL"),
                 ducks=c(23, 39, 47),
                 fish=c(6,30,20),
                 birds=c(99,3,64))

###

df

###

df %>%
  pivot_longer(cols=ducks:birds,
               names_to="animals",
               values_to="total") %>%
  group_by(state) %>%
  mutate(percent=
           round(total/sum(total)*100,1))

###

df_long <- df %>%
  pivot_longer(cols=ducks:birds,
               names_to="animals",
               values_to="total") %>%
  group_by(state) %>%
  mutate(percent=
           round(total/sum(total)*100,1))

###

df_long

###

df_long %>%
  pivot_wider(names_from="animals",
              values_from="percent")

###

df_long %>%
  select(-total) %>%
  pivot_wider(names_from="animals",
              values_from="percent") %>%
  mutate(birds_fish_diff=
           birds-fish)

###

df_long <- df %>%
  pivot_longer(cols=ducks:birds,
               names_to="animals",
               values_to="total") %>%
  group_by(state) %>%
  mutate(percent=
           round(total/sum(total)*100,1))

###

df_long

###
df_long %>%
  pivot_wider(names_from="animals",
              values_from=c("total", "percent"))

###

library(lubridate)

df <- data.frame(First=c("Charlie", "Lucy", "Peppermint"),
                 Last=c("Brown", "van Pelt", "Patty"),
                 birthday=c("10-31-06", "2/4/2007", "June 1, 2005"))

df

###

df %>%
  mutate(birthday_clean=mdy(birthday))

###

df %>%
  mutate(birthday_clean=mdy(birthday)) %>%
  mutate(month=month(birthday_clean)) %>%
  mutate(year=year(birthday_clean)) %>%
  mutate(week=week(birthday_clean))

###





