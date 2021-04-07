## Loads the Nuclear Explosion dataset from gethub
nuclear_explosions <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/
                                      tidytuesday/master/data/2019/2019-08-20/
                                      nuclear_explosions.csv")

## Loads the packages ggplot2, lubridate, tidyr, and stringr.
library(ggplot2)
library(lubridate)
library(tidyr)
library(stringr)

## Converts the data in the variable date_long into POSIXT via the format year, month,
## and day
nuclear_explosions$date_long <- ymd(nuclear_explosions$date_long)
