# humphrk3-final_project.R
# STA 145 Final Project:Upload your Data into R

# Step 6: load the tidyverse
library(readr)

#Step 7 load data.csv from the working directory
data <- read_delim("data.csv")

#Step 8: run the three checks
dim(data)
names(data)
summary(data)

# descriptive statistics
# content ratings
table(data$content_rating)

# reviews
mean(data$reviews)
min(data$reviews)
max(data$reviews)

# Qualitative variable: content rating
table(data$content_rating)

# linear regression
lm <- lm(reviews ~ as.factor(content_rating), data = data)
summary(lm)

# box plot
boxplot(data$reviews ~ data$content_rating)
