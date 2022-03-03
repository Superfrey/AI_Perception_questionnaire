library(NHANES)
library(tidyverse)
nhanes_full_tidied <- NHANES %>%
    rename_with(snakecase::to_snake_case) %>%
    rename(sex = gender) %>%
    filter(!is.na(diabetes), !is.na(education))

paiq<-nhanes_full_tidied
