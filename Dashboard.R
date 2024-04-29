install.packages("flexdashboard")
install.packages("readxl")
install.packages("tidyverse")
library(plotly)
install.packages("plotly")


# Chart A - New Cases Line Chart


library(readxl)
COVID_data <- read_excel("C:\\Users\\Namit Yadav\\Documents\K22GB_18.xlsx")

library(ggplot2)
library(dplyr)
library(scales)  
