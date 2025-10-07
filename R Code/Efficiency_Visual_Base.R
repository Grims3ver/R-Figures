library(ggplot2)
library(readxl)
library(tidyverse)

thesis <- read_excel("C:/Users/aarde/Desktop/Thesis_scrubbed.xlsx", sheet = "Cleaned Results (R friendly)", range = "Q1:T40")
thesis<-na.omit(thesis) #omit blank entries, this must be done or the Likert will not generate!

names(thesis) <- c("Q15. Learning Opportunities?","Q16. Retain Information?", "Q17. Code Orange Tool?", "Q19. Learn Tasks?")
thesis$`Q15. Learning Opportunities?` = factor(thesis$`Q15. Learning Opportunities?` , levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q16. Retain Information?` = factor(thesis$`Q16. Retain Information?`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q17. Code Orange Tool?` = factor(thesis$`Q17. Code Orange Tool?`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis$`Q19. Learn Tasks?` = factor(thesis$`Q19. Learn Tasks?`, levels = c("1 - Strongly Disagree", "2 - Disagree", "3 - Neutral", "4 - Agree", "5 - Strongly Agree"), ordered = TRUE)
thesis = as.data.frame(thesis)

thesisLikert = likert::likert(thesis)
plot1 = plot(thesisLikert)
plot1