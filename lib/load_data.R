library(readr)
library(stringr)
library(magrittr)
library(here)
library(dplyr)

load_data <- function() {
  data_subfolder <- "data/happydb/data"
  topic_subfolder <- "data/happydb/data/topic_dict"
  
  files_data <- list.files(here(data_subfolder), ) %>%
    str_subset("\\.csv$") %>%
    as_tibble() %>%
    mutate(path = str_c(data_subfolder, "/", value))
  
  files_topic_dict <- list.files(here(topic_subfolder), ) %>%
    str_subset("\\.csv$") %>%
    as_tibble() %>%
    mutate(path = str_c(topic_subfolder, "/", value))
  
  files_df <- files_data %>%
    rbind(files_topic_dict) %>%
    mutate(df_name = str_split_i(value, "\\.", 1))
  
  for(files in 1L:nrow(files_df)) {
    df_name <- files_df$df_name[files]
    file_location <- here(files_df$path[files])
    
    assign(x = df_name, 
           value = read_csv(file_location),
           envir = .GlobalEnv)
  }
}

