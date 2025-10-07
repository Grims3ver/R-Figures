library(ggplot2)
library(readxl)
library(tidyverse)

thesis <- read_excel("C:/Users/aarde/Desktop/Thesis_scrubbed.xlsx", sheet = "Cleaned Results (R friendly)", range = "D1:G39")

names(thesis) <- c("Q3. Preknowledge","Q4. Confidence","Q5. Tasks","Q6. Sequence")
thesis$`Q3. Preknowledge` = factor(thesis$`Q3. Preknowledge`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q4. Confidence` = factor(thesis$`Q4. Confidence`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q5. Tasks`= factor(thesis$`Q5. Tasks`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q6. Sequence` = factor(thesis$`Q6. Sequence`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis = as.data.frame(thesis)

thesisLikert = likert::likert(thesis)
plot1 = plot(thesisLikert)
plot1