library(dplyr)
library(stringr)

setwd("C:/Users/Asus/Documents/Fall2024/CS579/term-project/redone/")
data_combined <- read.csv("data(2012-2022)-full.csv")

# Congressional districts dataset
district_data <- data_combined %>%
  mutate(
    # Extract state
    state = str_extract(NAME, ",\\s*([^,]*)$") %>%
      str_remove(",\\s*") %>%
      toupper(),
    # Extract district
    district = str_extract(NAME, "\\d+") %>%
      as.numeric()  # Convert district to numeric
  )

# External dataset with party and voter_turnout
external_data <- read_csv("full.csv") %>%
  select(state, district, year, party, voter_turnout) %>%  # Only the required columns
  mutate(
    state = toupper(state)  # Ensure state names are uppercase for matching
  )

# Merge based on state, district, and year
merged_data <- district_data %>%
  left_join(external_data, by = c("state", "district", "year"))


merged_data <- merged_data %>%
  select(-state, -district) %>%
  drop_na() %>%
  rename(
    congressional_party = party,
    congressional_voter_turnout = voter_turnout
  )



# View the merged dataset
View(merged_data)

# Write to CSV
write.csv(merged_data, "merged_data_full(2012-2022).csv", row.names = FALSE)
