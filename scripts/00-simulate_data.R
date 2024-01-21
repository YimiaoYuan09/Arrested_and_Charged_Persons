#### Preamble ####
# Purpose: Simulate sample data of arrested and charged persons 
# Author: Yimiao Yuan
# Date: 21 January 2024
# Contact: yimiaomail@gmail.com
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
# install the package
# install.packages("tidyverse")

# load the package
library(tidyverse)


#### Simulate data ####
# add a seed: generate the same random data each time
set.seed(853)

# create 20 examples
# year: year the person get arrested
# gender: gender of the arrested person
# age: age of the arrested person
# ward: location where the crime take place 
simulate_data <-
  tibble(
    year = sample(x = 2001:2020, size = 20, replace = TRUE),
    gender = sample(x = c("female", "male"), size = 20, replace = TRUE),
    age = runif(n = 20, min = 1, max = 100) |> floor(),
    ward = runif(n = 20, min = 1, max = 10) |> floor()
  )



