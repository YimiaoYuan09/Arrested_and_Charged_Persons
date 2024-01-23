# Trends of Arrested and Charged Person in Toronto, 2014-2022

## Overview

This repo is an analysis of the trend of arrested and charged persons from 2014 to 2022, using the dataset from [Open Data Toronto](https://open.toronto.ca/dataset/police-annual-statistical-report-arrested-and-charged-persons/).


## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Reproduce Report

Run the following in order:

1. Run `/scripts/01-download_data.R` to obtain the raw data.
2. Run `/scripts/02-data_cleaning.R` to obtain the clean data.
3. Open `/outputs/paper/paper.qmd` and install the required packages.
