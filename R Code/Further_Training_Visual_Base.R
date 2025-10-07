library(ggplot2)
library(readxl)
library(tidyverse)

thesis <- read_excel("Likert_Responses_Anonymized.xlsx", sheet = "Cleaned Results (R friendly)", range = "H1:I40")

names(thesis) <- c("Q7. Additional Training","Q8. Regularity")
thesis$`Q7. Additional Training` = factor(thesis$`Q7. Additional Training` , levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q8. Regularity` = factor(thesis$`Q8. Regularity`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis = as.data.frame(thesis)

thesisLikert = likert::likert(thesis)
plot1 = plot(thesisLikert)
plot1