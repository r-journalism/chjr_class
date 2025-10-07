#### Slide 7 ----
burgers <- data.frame(employee=c("Bob", "Gene",
                                 "Linda", "Louise",
                                 "Tina"),
                      time=c(25, 30, 60, 20, 50),
                      age=c(42, 11, 39, 9, 13),
                      interest=c("cooking", "music", "wine", "chaos", "horses"))
burgers

burgers <- burgers |>
  mutate(where="front")

burgers


#### Slide 8 ----
burgers

#### Slide 9 ----

burgers
ggplot(burgers, aes(x=where, y=time, fill=employee))

#### 10 ----
burgers
ggplot(burgers, aes(x=where, y=time, fill=employee)) +
  geom_col(position="stack")

#### 11 ----
burgers

#### 12 ----
ggplot(burgers, aes(x=employee, y=time, fill=employee))

#### 13 ----
ggplot(burgers, aes(x=employee, y=time, fill=employee)) +
  geom_col(position="stack")


#### 16 ----
ggplot(burgers) +
  geom_point(aes(x=employee, y=time))

#### 17 ----
ggplot(burgers) +
  geom_point(aes(x=employee, y=time, fill=employee))

#### 18 ----
ggplot(burgers) +
  geom_point(aes(x=employee, y=time, fill=employee, color=employee))

#### 19 ----
ggplot(burgers) +
  geom_point(aes(x=employee, y=time, fill=employee, color=employee, size=age))

#### 22 ----
ggplot(burgers) +
  geom_col(aes(x=employee, y=time), stat="identity")

#### 23 ----
ggplot(burgers) +
  geom_col(aes(x=time, y=employee), stat="identity")

#### 24 ----
disney <- read_csv("slides_data/disney_movies_total_gross.csv")
glimpse(disney)

#### 25 ----
disney <- disney |>
  mutate(release_date=mdy(release_date),
         total_gross=parse_number(total_gross),
         inflation_adjusted_gross=parse_number(inflation_adjusted_gross))

glimpse(disney)


#### 27 ----
disney

#### 28 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre))

#### 29 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point()

#### 31 ----
disney

#### 32 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre))
#### 33 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point()

#### 34 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"), ymd("2020-01-01")))

#### 35 ----
disney

#### 36 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre))

#### 37 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point()

#### 38 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")))


#### 39 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01"))) +
  scale_y_continuous(limits=c(0, 1000000000))


#### 42 ----
disney

#### 43 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point()

#### 44 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y"))


#### 45 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format())


#### 46 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross,
             color=genre)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format())


#### 49 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross))

#### 50 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point()

#### 51 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y"))

#### 52 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format())

#### 53 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre)

#### 56 ----
disney

#### 57 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross))


#### 58 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point()

#### 59 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y"))


#### 60 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format())

#### 61 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre)

#### 62 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit")


#### 63 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation")

##### 64 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="")

#### 65 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="") +
  labs(caption="Data: Source Goes Here")

#### 69 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross))

#### 70 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point()

#### 71 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y"))

#### 72 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format())

#### 73 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre)

#### 74 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit")

#### 75 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation")

#### 76 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="")

#### 77 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="") +
  labs(caption="Data: Source Goes Here")

#### 78 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="") +
  labs(caption="Data: Source Goes Here") +
  theme(strip.background = element_rect(colour = "black", fill = "white"))

#### 79 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="") +
  labs(caption="Data: Source Goes Here") +
  theme(strip.background = element_rect(colour = "black", fill = "white")) +
  theme(legend.key = element_rect(fill = "white", colour = "black"))


#### 80 ----
disney |>
  ggplot(aes(x=release_date,
             y=inflation_adjusted_gross)) +
  geom_point() +
  scale_x_date(limits=c(ymd("1980-01-01"),
                        ymd("2020-01-01")),
               labels=scales::date_format("%Y")) +
  scale_y_continuous(limits=c(0, 1000000000),
                     labels=scales::dollar_format()) +
  facet_wrap(~genre) +
  labs(title="Disney animated movie gross profit") +
  labs(subtitle="Adjusted for inflation") +
  labs(y="", x="") +
  labs(caption="Data: Source Goes Here") +
  theme(strip.background = element_rect(colour = "black", fill = "white")) +
  theme(legend.key = element_rect(fill = "white", colour = "black")) +
  theme_minimal()
