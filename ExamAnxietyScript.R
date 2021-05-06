# Set up

setwd("~/Git-projects/Blinding")
library(tidyverse)
data <- read_csv("ExamAnxietyBlinded.csv")

# Outlier detection

data$Exam_standardized <- scale(data$Exam)
summary(data$Exam_standardized) # no outliers (criterion: +- 3 SD)

# Normal distribution

qqnorm(data$Exam)
qqline(data$Exam) 

# Analysis

res <- lm(Exam ~ Anxiety*Revise*Gender, data=data)
summary(res)
