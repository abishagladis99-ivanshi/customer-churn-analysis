
# Customer Churn Analysis

library(tidyverse)

churn_data <- read.csv("customer_churn.csv")

summary <- churn_data %>%
  group_by(Contract) %>%
  summarise(Churned_Customers = sum(Churn == "Yes"))

print(summary)

# Visualization
library(ggplot2)
ggplot(summary, aes(x=Contract, y=Churned_Customers)) +
  geom_bar(stat="identity", fill="orange") +
  labs(title="Churned Customers by Contract Type")
