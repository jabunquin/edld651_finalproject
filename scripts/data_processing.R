library(vdemdata)
library(dplyr)
vdem <- vdem

colnames(vdem)

unique(vdem$country_name)

vdem %>% 
  select(contains('v2elsnlfc_1')) %>%
  head()


vdem %>%
  filter(country_name == "Bangladesh") %>%
  summarize(sd_polyarchy = sd(v2x_polyarchy, na.rm = TRUE))

vdem_subset <- vdem %>%
  filter(country_name == "Bangladesh" | 
           country_name == "Philippines" |
           country_name == "Pakistan" |
           country_name == "United States of America") %>%
  select(country_name, v2x_polyarchy, v2elsnlfc_0, v2elsnlfc_1)

table(vdem_subset$country_name)
