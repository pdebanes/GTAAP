
libraries <- c(
  "bannerCommenter", "readxl", "readr", "openxlsx", "tidyverse", 
  "data.table", "dplyr", "stringr", "conflicted", "quarto", "knitr", "janitor"
)
for (package in libraries) {
  if (!requireNamespace(package, quietly = TRUE)) {
    install.packages(package, dependencies = TRUE)
    library(package, character.only = TRUE)
  } else {
    library(package, character.only = TRUE)
  }
}
conflicted::conflicts_prefer(dplyr::filter)

GTAAP_data_raw <- read.csv("C:/Users/MERCYCORPS/OneDrive - mercycorps.org/DRC-CAT/AAP/GTAAP_HH_survey_15092024_data.csv",
                       header=T)

GTAAP_data_raw <-GTAAP_data_raw %>% select(-6, -7)

GTAAP_questionnaire <-  read_excel("C:/Users/MERCYCORPS/OneDrive - mercycorps.org/DRC-CAT/AAP/GTAAP_HH_survey_questionnaire.xlsx")

# table(GTAAP_data$identification.organisation_type)
# 
# table(GTAAP_data$identification.activites_zone)
# 
# table(GTAAP_data$enquete.groupement_activites)
# 
# table(GTAAP_data$enquete.groupement_crm.ligne_verte)

# Load necessary libraries
library(dplyr)
library(ggplot2)
library(readr)

# Load the dataset
data <- read_csv("C:/Users/MERCYCORPS/OneDrive - mercycorps.org/DRC-CAT/AAP/GTAAP_HH_survey_nopii.csv")

colnames(data)<-colnames(GTAAP_data_raw)

GTAAP_data_raw<-data

