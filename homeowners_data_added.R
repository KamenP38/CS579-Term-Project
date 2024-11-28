library(tidycensus)
library(tidyverse)

# Define the sequence of years
years <- seq(2012, 2022, by = 2)
geography <- "congressional district"

get_homeownership_data <- function(year, geography = "congressional district") {
  # Determine ACS survey type
  # ACS 5-year estimates are used for all years in this context
  survey_type <- "acs5"
  
  # Retrieve ACS data
  data <- get_acs(
    geography = geography,
    variables = c(
      total = "B25003_001",
      owner = "B25003_002",
      renter = "B25003_003"
    ),
    year = year,
    survey = survey_type,
    cache_table = TRUE,
    geometry = FALSE  # Set to TRUE if you need spatial data
  )
  
  # Process data to calculate percentages
  data_processed <- data %>%
    select(GEOID, NAME, variable, estimate) %>%
    spread(key = variable, value = estimate) %>%
    mutate(
      year = year,
      homeownership_pct = (owner / total) * 100,
      renting_pct = (renter / total) * 100
    ) %>%
    select(GEOID, NAME, year, homeownership_pct, renting_pct)
  
  return(data_processed)
}

# Retrieve data for all specified years and combine
homeownership_data <- map_df(years, ~ get_homeownership_data(year = .x, geography = geography))

# View the first few rows
View(homeownership_data)
