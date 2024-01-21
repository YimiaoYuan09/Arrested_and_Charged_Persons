#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Yimiao Yuan
# Date: 21 January 2024
# Contact: yimiaomail@gmail.com
# License: MIT
# Pre-requisites: run 01-download_data.R in scripts folder first to get the raw data.
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
# install the packages
# install.packages("tidyverse")
# install.packages("janitor)

# load the packages
library(tidyverse)
library(janitor)

#### Clean data ####
raw_arrested_person <- read_csv("inputs/data/raw_arrested_person_data.csv")

# clean the names to read easily
# select columns that I interested in
# drop the unknown rows
# rename the column names
cleaned_arrested_person <-
  raw_arrested_person |>
  clean_names() |>
  select(arrest_year, division, sex, age_cohort, category, arrest_count) |>
  filter(sex != "Unknown") |>
  filter(age_cohort != "Unknown") |>
  rename(year = arrest_year,
         age = age_cohort,
         num_of_arrested_person = arrest_count)


#### Save data ####
write_csv(cleaned_arrested_person, "outputs/data/cleaned_arrested_person_data.csv")
