## Data

# Data for this project is obtained from public Open LLM Leaderboard “contents” dataset hosted by Hugging Face, 
#which provides standardized evaluation scores and metadata for many large language models.(https://huggingface.co/datasets/open-llm-leaderboard/contents)

# Code to get dataset-

# R does not have a direct equivalent of load_dataset(...) for Hugging Face datasets, so we downloded via Python, then read in R
# Follow these alternative steps to retrieve the dataset if you encounter any driver authetication issues while dowloading the dataset hosted on google drive.

# !pip install datasets
# 
# from datasets import load_dataset
# import pandas as pd
# 
# ds = load_dataset("open-llm-leaderboard/contents")
# 
# df = ds['train'].to_pandas() # only one slipt available in the dataset -'train'
# df.to_csv("203-Final_Project/open_llm_leaderboard.csv", index = False)

library(googledrive)
library(janitor)
library(here)

get_data <- function(){
  drive_auth()
  drive_find("open_llm_leaderboard.csv")
  drive_download(file = "open_llm_leaderboard.csv", path = here("data/raw/open_llm_leaderboard.csv"), overwrite = TRUE)
  d <- read.csv(here("data/raw/open_llm_leaderboard.csv"))
  d <- clean_names(d)
  write.csv(d,here("data/raw/open_llm_leaderboard_clean.csv"),row.names = FALSE)
  
}
get_data()

hf_dataset_full <- read.csv(here("data/raw/open_llm_leaderboard_clean.csv"))

# names of columns
names(hf_dataset_full)

# Structure of the dataset
str(hf_dataset_full)



