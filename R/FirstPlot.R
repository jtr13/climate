# Read in the data
#
library(tidyverse)
df <- read_csv("data/monthly_in_situ_co2_mlo.csv", skip = 56, na = "-99.99")

colnames(df) <- c("Yr", "Mn", "Date1", "Date2", "CO2", "C6", "C7", "C8", "C9", "C10")

ggplot(df, aes(x = Date2, y = CO2)) + geom_line()
