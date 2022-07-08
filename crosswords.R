# Get the Data

# Read in with tidytuesdayR package 
# Install from CRAN via: install.packages("tidytuesdayR")
# This loads the readme and all the datasets for the week of interest

# Either ISO-8601 date or year/week works!

tuesdata <- tidytuesdayR::tt_load('2022-04-19')
tuesdata <- tidytuesdayR::tt_load(2022, week = 16)

times <- tuesdata$times

# Or read in the data manually

# big_dave <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-04-19/big_dave.csv')
# times <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-04-19/times.csv')

# -- ##### Review data

clues <- tuesdata$times %>% 
  bind_rows(tuesdata$big_dave, .id = 'rowid')
