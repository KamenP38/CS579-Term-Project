library(stringr)
library(httr)
library(jsonlite)
library(tidycensus)
library(dplyr)
library(tidyr)

# Set up the years you want to collect data for (even years, excluding 2020)
years <- 2020

# Load and cache variables for 2012 ACS 1-Year survey
acs_vars_2020 <- load_variables(year = 2020, dataset = "acs5", cache = TRUE)

# View the variables to inspect options
View(acs_vars_2020)

# Define a subset of variables or use acs_vars_2012$name for all variables
# selected_vars <- acs_vars_2012$name  # This will pull all available variables

# Get ACS data for congressional districts in Texas for 2012
#tx_voter_age_data <- get_acs(
 # geography = "congressional district",
  #variables = selected_vars,  # Use all or a subset of variables
  #state = "TX",
  #year = 2012,
  #survey = "acs1"
#)

# View the data to inspect
#View(tx_voter_age_data)

# Combine all years into a single data frame
# combined_election_results <- bind_rows(all_election_results)

states <- c(
  "01", "02", "04", "05", "06", "08", "09", "10", "11", "12", "13", "15", "16", "17", "18", 
  "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", 
  "34", "35", "36", "37", "38", "39", "40", "41", "42", "44", "45", "46", "47", "48", "49", 
  "50", "51", "53", "54", "55", "56"
)
length(states)

# Voters by year (every 2 years) starting 2012 until 2022
# voters <- c(251044, 151671, 305654, 297179, 408270, 241180)

# Initialize a counter fo the voters vector
# voter_idx <- 1
# acs_vars <- load_variables(year = 2018, dataset = "acs1", cache = TRUE)


tx_cd_table_all_years <- data.frame()


# Loop through each even year, collect the data, and combine them
for (yr in years) {
  
  
  
  # Pull ACS 1-year data for the current year with additional population and socioeconomic variables
  tx_cd_data <- get_acs(geography = "congressional district", 
                        variables = c(
                          total_pop = "B01003_001", 
                          white_pop = "B02001_002", 
                          black_pop = "B02001_003",
                          native_pop = "B02001_004",
                          asian_pop = "B02001_005",
                          islander_pop = "B02001_006",
                          hispanic_pop = "B03003_003",
                          male_pop = "B01001_002",   # Male population,
                          
                          # Young voters (18 to 44) for each racial group
                          young_white_m_18_19 = "B01001A_007", young_white_m_20_24 = "B01001A_008", young_white_m_25_29 = "B01001A_009",
                          young_white_m_30_34 = "B01001A_010", young_white_m_35_44 = "B01001A_011",
                          young_white_f_18_19 = "B01001A_022", young_white_f_20_24 = "B01001A_023", young_white_f_25_29 = "B01001A_024",
                          young_white_f_30_34 = "B01001A_025", young_white_f_35_44 = "B01001A_026",
                          
                          young_black_m_18_19 = "B01001B_007", young_black_m_20_24 = "B01001B_008", young_black_m_25_29 = "B01001B_009",
                          young_black_m_30_34 = "B01001B_010", young_black_m_35_44 = "B01001B_011",
                          young_black_f_18_19 = "B01001B_022", young_black_f_20_24 = "B01001B_023", young_black_f_25_29 = "B01001B_024",
                          young_black_f_30_34 = "B01001B_025", young_black_f_35_44 = "B01001B_026",
                          
                          young_native_m_18_19 = "B01001C_007", young_native_m_20_24 = "B01001C_008", young_native_m_25_29 = "B01001C_009",
                          young_native_m_30_34 = "B01001C_010", young_native_m_35_44 = "B01001C_011",
                          young_native_f_18_19 = "B01001C_022", young_native_f_20_24 = "B01001C_023", young_native_f_25_29 = "B01001C_024",
                          young_native_f_30_34 = "B01001C_025", young_native_f_35_44 = "B01001C_026",
                          
                          young_asian_m_18_19 = "B01001D_007", young_asian_m_20_24 = "B01001D_008", young_asian_m_25_29 = "B01001D_009",
                          young_asian_m_30_34 = "B01001D_010", young_asian_m_35_44 = "B01001D_011",
                          young_asian_f_18_19 = "B01001D_022", young_asian_f_20_24 = "B01001D_023", young_asian_f_25_29 = "B01001D_024",
                          young_asian_f_30_34 = "B01001D_025", young_asian_f_35_44 = "B01001D_026",
                          
                          young_islander_m_18_19 = "B01001E_007", young_islander_m_20_24 = "B01001E_008", young_islander_m_25_29 = "B01001E_009",
                          young_islander_m_30_34 = "B01001E_010", young_islander_m_35_44 = "B01001E_011",
                          young_islander_f_18_19 = "B01001E_022", young_islander_f_20_24 = "B01001E_023", young_islander_f_25_29 = "B01001E_024",
                          young_islander_f_30_34 = "B01001E_025", young_islander_f_35_44 = "B01001E_026",
                          
                          young_other_m_18_19 = "B01001F_007", young_other_m_20_24 = "B01001F_008", young_other_m_25_29 = "B01001F_009",
                          young_other_m_30_34 = "B01001F_010", young_other_m_35_44 = "B01001F_011",
                          young_other_f_18_19 = "B01001F_022", young_other_f_20_24 = "B01001F_023", young_other_f_25_29 = "B01001F_024",
                          young_other_f_30_34 = "B01001F_025", young_other_f_35_44 = "B01001F_026",
                          
                          young_two_or_more_m_18_19 = "B01001G_007", young_two_or_more_m_20_24 = "B01001G_008", young_two_or_more_m_25_29 = "B01001G_009",
                          young_two_or_more_m_30_34 = "B01001G_010", young_two_or_more_m_35_44 = "B01001G_011",
                          young_two_or_more_f_18_19 = "B01001G_022", young_two_or_more_f_20_24 = "B01001G_023", young_two_or_more_f_25_29 = "B01001G_024",
                          young_two_or_more_f_30_34 = "B01001G_025", young_two_or_more_f_35_44 = "B01001G_026",
                          
                          young_hispanic_m_18_19 = "B01001I_007", young_hispanic_m_20_24 = "B01001I_008", young_hispanic_m_25_29 = "B01001I_009",
                          young_hispanic_m_30_34 = "B01001I_010", young_hispanic_m_35_44 = "B01001I_011",
                          young_hispanic_f_18_19 = "B01001I_022", young_hispanic_f_20_24 = "B01001I_023", young_hispanic_f_25_29 = "B01001I_024",
                          young_hispanic_f_30_34 = "B01001I_025", young_hispanic_f_35_44 = "B01001I_026",
                          
                          # Old voters (45 and above) for each racial group
                          old_white_m_45_54 = "B01001A_012", old_white_m_55_64 = "B01001A_013", old_white_m_65_74 = "B01001A_014",
                          old_white_m_75_84 = "B01001A_015", old_white_m_85_over = "B01001A_016",
                          old_white_f_45_54 = "B01001A_027", old_white_f_55_64 = "B01001A_028", old_white_f_65_74 = "B01001A_029",
                          old_white_f_75_84 = "B01001A_030", old_white_f_85_over = "B01001A_031",
                          
                          old_black_m_45_54 = "B01001B_012", old_black_m_55_64 = "B01001B_013", old_black_m_65_74 = "B01001B_014",
                          old_black_m_75_84 = "B01001B_015", old_black_m_85_over = "B01001B_016",
                          old_black_f_45_54 = "B01001B_027", old_black_f_55_64 = "B01001B_028", old_black_f_65_74 = "B01001B_029",
                          old_black_f_75_84 = "B01001B_030", old_black_f_85_over = "B01001B_031",
                          
                          old_native_m_45_54 = "B01001C_012", old_native_m_55_64 = "B01001C_013", old_native_m_65_74 = "B01001C_014",
                          old_native_m_75_84 = "B01001C_015", old_native_m_85_over = "B01001C_016",
                          old_native_f_45_54 = "B01001C_027", old_native_f_55_64 = "B01001C_028", old_native_f_65_74 = "B01001C_029",
                          old_native_f_75_84 = "B01001C_030", old_native_f_85_over = "B01001C_031",
                          
                          old_asian_m_45_54 = "B01001D_012", old_asian_m_55_64 = "B01001D_013", old_asian_m_65_74 = "B01001D_014",
                          old_asian_m_75_84 = "B01001D_015", old_asian_m_85_over = "B01001D_016",
                          old_asian_f_45_54 = "B01001D_027", old_asian_f_55_64 = "B01001D_028", old_asian_f_65_74 = "B01001D_029",
                          old_asian_f_75_84 = "B01001D_030", old_asian_f_85_over = "B01001D_031",
                          
                          old_islander_m_45_54 = "B01001E_012", old_islander_m_55_64 = "B01001E_013", old_islander_m_65_74 = "B01001E_014",
                          old_islander_m_75_84 = "B01001E_015", old_islander_m_85_over = "B01001E_016",
                          old_islander_f_45_54 = "B01001E_027", old_islander_f_55_64 = "B01001E_028", old_islander_f_65_74 = "B01001E_029",
                          old_islander_f_75_84 = "B01001E_030", old_islander_f_85_over = "B01001E_031",
                          
                          old_other_m_45_54 = "B01001F_012", old_other_m_55_64 = "B01001F_013", old_other_m_65_74 = "B01001F_014",
                          old_other_m_75_84 = "B01001F_015", old_other_m_85_over = "B01001F_016",
                          old_other_f_45_54 = "B01001F_027", old_other_f_55_64 = "B01001F_028", old_other_f_65_74 = "B01001F_029",
                          old_other_f_75_84 = "B01001F_030", old_other_f_85_over = "B01001F_031",
                          
                          old_two_or_more_m_45_54 = "B01001G_012", old_two_or_more_m_55_64 = "B01001G_013", old_two_or_more_m_65_74 = "B01001G_014",
                          old_two_or_more_m_75_84 = "B01001G_015", old_two_or_more_m_85_over = "B01001G_016",
                          old_two_or_more_f_45_54 = "B01001G_027", old_two_or_more_f_55_64 = "B01001G_028", old_two_or_more_f_65_74 = "B01001G_029",
                          old_two_or_more_f_75_84 = "B01001G_030", old_two_or_more_f_85_over = "B01001G_031",
                          
                          old_hispanic_m_45_54 = "B01001I_012", old_hispanic_m_55_64 = "B01001I_013", old_hispanic_m_65_74 = "B01001I_014",
                          old_hispanic_m_75_84 = "B01001I_015", old_hispanic_m_85_over = "B01001I_016",
                          old_hispanic_f_45_54 = "B01001I_027", old_hispanic_f_55_64 = "B01001I_028", old_hispanic_f_65_74 = "B01001I_029",
                          old_hispanic_f_75_84 = "B01001I_030", old_hispanic_f_85_over = "B01001I_031",
                          
                          # kids
                          male_under_5 = "B01001_003", male_5_9 = "B01001_004", male_10_14 = "B01001_005", male_15_17 = "B01001_006",
                          female_under_5 = "B01001_027", female_5_9 = "B01001_028", female_10_14 = "B01001_029", female_15_17 = "B01001_030",
                          
                          # eligible_voters = "B29001_001", # People eligible to vote
                          # under5_male="B01001_003", under10_male="B01001_004", under5_fem="B01001_027", under10_fem="B01001_028", #under ten years
                          # under15_male="B01001_005", under18_male="B01001_006",
                          employed_pop = "B23025_005",  # Employed population
                          not_in_labor_force = "B23025_007",
                          median_income = "B19013_001",  # Median income
                          hs_graduate = "B15003_017", ged = "B15003_018",  # High school graduate
                          some_college_less = "B15003_019", some_college_more = "B15003_020", # Some college, no degree
                          associates_degree = "B15003_021",  # Associate’s degree
                          bachelors_degree = "B15003_022",  # Bachelor’s degree
                          masters_degree = "B15003_023", phd_degree = "B15003_024", doctorate_degree = "B15003_025",  # Graduate/professional degree
                          insurance_white="B27001A_001", insurance_black="B27001B_001", insurance_hispanic="B27001I_001", insurance_native="B27001C_001", insurance_asian="B27001D_001", insurance_islander="B27001E_001", insurance_other="B27001F_001", insurance_more="B27001G_001"
                        ), 
                        state = states, 
                        year = yr, 
                        survey = "acs5")
  
  # Create a table for the current year and add the year as a column
  tx_cd_table <- tx_cd_data %>%
    select(GEOID, NAME, variable, estimate) %>%
    spread(key = variable, value = estimate) %>%
    mutate(year = yr)  # Add a new column with the current year
  
  tx_cd_table <- tx_cd_table %>%
    mutate(
      insurance_white = coalesce(insurance_white, 0),
      insurance_black = coalesce(insurance_black, 0),
      insurance_hispanic = coalesce(insurance_hispanic, 0),
      insurance_native = coalesce(insurance_native, 0),
      insurance_asian = coalesce(insurance_asian, 0),
      insurance_islander = coalesce(insurance_islander, 0),
      insurance_other = coalesce(insurance_other, 0),
      insurance_more = coalesce(insurance_more, 0)
    )
  
  # Calculate the total number of kids under 18
  tx_cd_table <- tx_cd_table %>%
    mutate(
      kids_under_18 = male_under_5 + male_5_9 + male_10_14 + male_15_17 +
        female_under_5 + female_5_9 + female_10_14 + female_15_17,
      young_voters = rowSums(select(., starts_with("young_")), na.rm = TRUE),
      old_voters = rowSums(select(., starts_with("old_")), na.rm = TRUE),
    )
  
  # Calculate percentages for each group relative to the total population
  tx_cd_table <- tx_cd_table %>%
    mutate(white_pct = (white_pop / total_pop),
           black_pct = (black_pop / total_pop),
           native_pct = (native_pop / total_pop),
           asian_pct = (asian_pop / total_pop),
           islander_pct = (islander_pop / total_pop),
           hispanic_pct = (hispanic_pop / total_pop),
           male_pct = (male_pop / total_pop),
           female_pct = 1 - male_pct,
           employed_pct = (employed_pop / total_pop),
           not_in_labor_force_pct = (not_in_labor_force / total_pop),
           hs_graduate_pct = ((ged+hs_graduate) / total_pop),
           some_college_pct = ((some_college_less+some_college_more) / total_pop),
           associates_pct = (associates_degree / total_pop),
           bachelors_pct = (bachelors_degree / total_pop),
           grad_prof_pct = ((masters_degree+phd_degree+doctorate_degree) / total_pop),
           health_insurance_pct = ((insurance_white+insurance_black+insurance_asian+insurance_native+insurance_islander+insurance_other+insurance_more) / total_pop),
           kids_under_18_pct = kids_under_18 / total_pop,
           # eligible_voter_pct = (eligible_voters / total_pop),
           young_voter_pct = (young_voters / total_pop),
           old_voter_pct = (old_voters / total_pop)) %>%
    select(GEOID, NAME, year,
           total_pop, white_pct, black_pct, asian_pct, hispanic_pct,
           male_pct, female_pct, employed_pct, not_in_labor_force_pct, median_income,
           hs_graduate_pct, some_college_pct, associates_pct,
           bachelors_pct, grad_prof_pct, health_insurance_pct, kids_under_18_pct, young_voter_pct, old_voter_pct)  # Select only the relevant columns
  
  # Increment voter index for the next year
  # voter_idx <- voter_idx + 1
  
  # Combine the current year's data with the cumulative table
  tx_cd_table_all_years <- bind_rows(tx_cd_table_all_years, tx_cd_table)
}

# View the table to confirm extraction worked
View(tx_cd_table_all_years)

#write.csv(tx_cd_table_all_years, "/Users/Asus/Documents/Fall2024/CS579/term-project/dataset(2012-2022)_w2020.csv", row.names = FALSE)
