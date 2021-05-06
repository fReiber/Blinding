setwd("D:/Bildung/04_Promotion/SMiP/2021_SS")
options(scipen=999)
options(max.print=1000000)
data <- read.csv("moon-aggression-data.csv")
names(data)

#Outliers#
max(data$Moon_standardized)
min(data$Moon_standardized)
max(data$Other_standardized)
min(data$Other_standardized)
#-> no outliers

#Preconditions#
#Normal-distribution
qqnorm(data$Moon_standardized)
qqline(data$Moon_standardized) 

qqnorm(data$Other_standardized)
qqline(data$Other_standardized) 
#seems ok, but it is z-std....


#t-test
t.test(data$Moon_standardized, data$Other_standardized, paired = T)


