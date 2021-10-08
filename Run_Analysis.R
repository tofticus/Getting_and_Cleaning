library(tidyverse)


setwd("C:\\Users\\Tofticus\\Documents\\R\\Other\\datasciencecoursera\\week4_assignment")


features <- read_delim("features.txt", delim = " ")

features

features2 <- features %>% pivot_wider(names_from = `tBodyAcc-mean()-X`, values_from = `1`)


test <- read_delim("X_test.txt", delim = " ")

train <- read_delim("X_train.txt", delim = " ")



test_tib <- rbind(features2, test)