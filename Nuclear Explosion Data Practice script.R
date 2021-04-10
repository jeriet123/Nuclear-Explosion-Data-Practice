## Loads the Nuclear Explosion dataset from github
nuclear_explosions <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-08-20/nuclear_explosions.csv")

## Loads the packages ggplot2, lubridate, tidyr, and stringr.
library(ggplot2)
library(lubridate)
library(tidyr)
library(stringr)

## Converts the data in the variable date_long into POSIXT via the format year, month,
## and day
nuclear_explosions$date_long <- ymd(nuclear_explosions$date_long)

# Stores all of the variable names under Variables
Variables <- variable.names(nuclear_explosions)

# Stores all of the sources of nuclear explosions and the countries and regions 
# where nuclear explosions occurred. 
All_Countries <- unique(nuclear_explosions$country)
All_Regions   <- unique(nuclear_explosions$region)
All_Sources   <- unique(nuclear_explosions$source)

# Stores the names, the different type, and the different purposes of the nukes.
Purposes         <- unique(nuclear_explosions$purpose)
Types            <- unique(nuclear_explosions$type)
Identified_Nukes <- unique(nuclear_explosions$name)

