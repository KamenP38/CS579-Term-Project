library(dplyr)
library(stringr)
# I need to cleanup dataset
# dataset = dataset gathered from cs579Dataset.R
dataset <- read.csv("/Users/matthewmuranaka/Documents/CS579/demographics(2012-2022).csv")
df <- dataset %>%
  mutate(
    state = str_extract(NAME, ",\\s*(.*)$") %>% str_replace(",\\s*", ""),
    district = ifelse(
      str_detect(NAME, "at Large"),
      0,
      str_extract(NAME, "\\d+")
    )
  ) %>%
  mutate(district = as.numeric(district))
df$NAME <- NULL
df$GEOID <- NULL
df <- df[, c("district", setdiff(names(df), "district"))]
df <- df[, c("state", setdiff(names(df), "state"))]
df$state <- toupper(df$state)
# View(df)
# This cleans up our dataset from cs579Dataset.R
# now it is ready to merge with the election results data

results <- read.csv("/Users/matthewmuranaka/Documents/CS579/CS579MidtermProject/results.csv")
results <- results[,c(1,2,8,13,17)]
merged_data <- merge(df, results, by = c("district", "state", 'year'))
# dataset is merged
# I need to calculate voter pct

# View(merged_data)
merged_data$voter_turnout <- merged_data$totalvotes / merged_data$voter_age_pop
merged_data$voter_age_pop <- NULL
merged_data$totalvotes <- NULL

write.csv(merged_data, "full.csv", row.names = FALSE)

