#### Preamble ####
# Purpose: Downloads and saves the data from OpenDataToronto website.
# Author: Yimiao Yuan
# Date: 21 January 2024
# Contact: yimiaomail@gmail.com
# License: MIT
# Pre-requisites: -
# Any other information needed? The dataset is Police Annual Statistical Report - Arrested
# and Charged Persons.


#### Workspace setup ####
# install the packages
# install.packages("tidyverse")
# install.packages("opendatatoronto")

# load the packages
library(opendatatoronto)
library(tidyverse)
library(dplyr)


#### Download data ####
# get package
package <- show_package("police-annual-statistical-report-arrested-and-charged-persons")

# get all resources for this package
resources <- list_package_resources("police-annual-statistical-report-arrested-and-charged-persons")

# identify datastore resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
raw_arrested_person <- filter(datastore_resources, row_number()==1) %>% get_resource()


#### Save data ####
write_csv(raw_arrested_person, "inputs/data/raw_arrested_person_data.csv") 

         
