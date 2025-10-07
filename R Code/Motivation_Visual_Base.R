library(ggplot2)
library(readxl)
library(tidyverse)

thesis <- read_excel("C:/Users/aarde/Desktop/Thesis_scrubbed.xlsx", sheet = "Cleaned Results (R friendly)", range = "N1:P39")
names(thesis) <- c("Q12. Interactivity","Q13. Engaging", "Q14. Reflection")
thesis$`Q12. Interactivity` = factor(thesis$`Q12. Interactivity` , levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q13. Engaging` = factor(thesis$`Q13. Engaging`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q14. Reflection` = factor(thesis$`Q14. Reflection`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis = as.data.frame(thesis)

thesisLikert = likert(thesis)
plot1 = plot(thesisLikert)
plot1