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
#* @apiTitle Distribuicion de Minutes
#* @apiDescription Appi que genera un histograma de la distribuicion de la columna "Minutes".
#* @get histograma
#* @serializer png
function(Transformar) {
    df <- read.csv("C:/Users/Umiak/Downloads/Examen Data Science/netflix.csv")
    if (Transformar == "Si"){
      df$Minutes <- (df$Minutes+3)^2
      histograma <- hist(df$Minutes)
    } else {
      df$Minutes <- df$Minutes
    }
    return(histograma)
}
