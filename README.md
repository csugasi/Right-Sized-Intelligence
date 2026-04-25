# Right-Sized Intelligence: Using Model Capacity and Training Stage to Choose Effective Large Language Models

### A Descriptive Analysis of Capacity, Training Stage, and Performance in Open Weight LLMs

# Brief Introduction 

Artificial intelligence is moving incredibly fast, but the organizations tackling humanity’s most urgent challenges, like non-profits, legal clinics, 
and public health groups are at risk of being priced out. They just don't have the budgets for premium APIs or the massive server racks needed for 
huge open-source models.
To bridge this gap, they can opt to look at smaller open-source models on Hugging Face. But that ecosystem is overwhelming, and a non-profit doesn't have 
the time or money to test thousands of models to find the perfect fit.

Proposed research question is “What is the relationship between the size of a Large Language Model (measured in parameters) & its performance?” 
In this research, the X is model capacity & the Y is benchmark score. The primary audience for this understanding is budget constrained non-profits that 
cannot afford premium enterprise API agreements for frontier models, nor do they possess the vast compute infrastructure required to host massive 
open-weight models locally. Whether it is a legal aid clinic triaging cases for low-income clients, a global public health initiative relying on 
community health workers in low-connectivity environments, or an education non-profit deploying subject-specific tutors, LLMs have the potential to 
significantly scale the impact of stretched workforces. 

This study contributes to the ongoing discussions of ‘scaling laws’, the principle that model size determines the model's performance. 
Existing scaling laws literature suggests a log-linear relationship. This research aims to describe whether 'scaling laws' remain consistent across 
different model sizes and training stages. While major labs like OpenAI and Google have examined these laws for their proprietary models, this work focuses 
on how these patterns appear in open-source models that anyone can access. The goal is to determine whether high-quality reasoning can actually be achieved 
with smaller models, or if optimal performance is only found in massive models that require large numbers of parameters and significant computational 
resources. Additionally, the research will explore how models at different training stages compare in reasoning capabilities. 

The study will utilize a cross-sectional dataset sourced from the Hugging Face Open LLM Leaderboard. The unit of observation is model checkpoints submitted
to the leaderboard. To measure reasoning (Y variable), the analysis will use a score called MMLU-PRO, an AI benchmark that tests how well models can think 
through complex problems rather than just memorizing facts. To measure model size (X variable), the study will use #Params (B), which indicates how many
billions of parameters or "brain cells" the model has. Since some models are simply versions of each other at different training stages or merged together,
the simple model will have IID assumption violations. Moving to a "Full Model," the analysis will explicitly model the training stages contributing to 
those IID assumption violations to obtain a more reliable comparison. The study will also consider other variables such as model base architecture, 
carbon emissions, alignment, or interactions like number of parameters by type to determine whether those details inform the overall relationship between 
size and performance.

## Folder Structure

├── LICENSE
├── README.md          <- Project overview and objectives
├── data
│   ├── raw            <- Original data from huggingface leaderboard (open_llm_learderboard.csv)
│   ├── interim        <- Cleaned/processed intermediate data (hf_dataset_clean.csv)
│   └── processed      <- Final data set for modeling (hf_dataset.csv )
├── prompt             <- The assignment prompt.
├── notebooks          <- Draft models
├── reports            <- Final outputs (Models_Final.Rmd, 203_Final_Report.pdf)
└── src                <- Source code.Exploratory analysis (descriptive.Rmd), Principle component analysis (PCA.Rmd)
    └── data           <- Scripts to download or generate data. Data download(get_data.R), Data cleaning(clean_data.Rmd)
        
    