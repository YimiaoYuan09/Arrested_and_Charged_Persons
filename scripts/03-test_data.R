#### Preamble ####
# Purpose: Tests the cleaned data to ensure it fits my desired results.
# Author: Yimiao Yuan
# Date: 21 January 2024
# Contact: yimiaomail@gmail.com
# License: MIT
# Pre-requisites: run 01-download_data.R and 02-data_cleaning.R in scripts folder first
# to get the raw data and cleaned data.
# Any other information needed? -


#### Workspace setup ####
# install the packages
# install.packages("tidyverse")

# load the packages
library(tidyverse)


#### Test data ####
# read in the cleaned data
cleaned_arrested_person <- read_csv("outputs/data/cleaned_arrested_person_data.csv")


# check column class
# year, num_of_arrested_person: numeric
class(cleaned_arrested_person$year) == "numeric"
class(cleaned_arrested_person$num_of_arrested_person) == "numeric"

# division, sex, age, category: character
class(cleaned_arrested_person$division) == "character"
class(cleaned_arrested_person$sex) == "character"
class(cleaned_arrested_person$age) == "character"
class(cleaned_arrested_person$category) == "character"


# range of data
cleaned_arrested_person$sex |>
  unique() == c("Female", "Male")
