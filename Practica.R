library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)
df <- read.csv("C:/Users/Umiak/Downloads/Examen Data Science/netflix.csv")

summary(df)
sd(df$Minutes, na.rm = T)
sd(df$Seasons, na.rm = T)

df_type <- df %>%
  group_by(type) %>%
  summary(min_n = mean(Minutes, na.rm = T))

df_country <- df %>%
  group_by(country) %>%
  summary(min_n = mean(Minutes, na.rm = T))

df_director <- df %>%
  group_by(director) %>%
  summary(min_n = mean(Minutes, na.rm = T))
