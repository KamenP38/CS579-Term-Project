# Predicting Elections and Voter Turnout for TX-22

This repository contains all of the necessary R, Python, and CSV files that were used to complete our project. The main file used to run all necessary models is notebook-project.ipynb

## Description of content of notebook-project.ipynb

In the notebook-project.ipynb file, the user can find all the code blocks used for extracting data related to the presidential elections within multiple districts (top 50 similar districts to TX-22) through extrapolation of precinct data. Furthermore, the user can find all the models used on the concatenated data in order to train various models and predict the outcome of the elections (Presidential and Congressional District Representative) and voter turnout.

Due to the nature of this project, many of the blocks were run separately, and thus, libraries have been imported multiple times so that no libraries were missing while running the particular block of code.

## Description of content of CSV files

The most meaningful CSV files are merged_data_full(2012-2022).csv, updated_main_csv_with_presidential_data.csv, top_50_similar_districts_to_texas_district_22_2022.csv

1. merged_data_full(2012-2022).csv
- This file contains the 2012-2022 data with the demographics features and the congressional elections results.

2. updated_main_csv_with_presidential_data.csv
- This file contains the same data as merged_data_full(2012-2022).csv as well as the added presidential elections data from the top 50 most similar districts.

3. top_50_similar_districts_to_texas_district_22_2022.csv
- This file contains the data regarding the cosine similarity between the top 50 most similar district to TX-22.