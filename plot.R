library(dplyr)
library(data.table)
library(ggplot2)

payments <- fread('payments.csv')

table(payments$Provider.City)
table(payments$Provider.State)

payments <- filter(payments, Provider.State == 'NY')

x <- payments$Average.Covered.Charges
summary(x)

y <- payments$Average.Total.Payments
summary(y)

qplot(Average.Covered.Charges,
      Average.Total.Payments,
      data=payments)

# Add transparency
# Better labelling for x axis
# Check size and resolution