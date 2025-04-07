library(tidyverse)
library(forcats)
View(gss_cat)

df <- gss_cat %>%
  select(marital) %>%
  filter(marital %in% 
           c("Married", "Never married", "Divorced")) %>%
  mutate(marital = fct_drop(marital)) # Drops Null Values
View(df)

tbl <- table(df)
View(tbl)

# Use Chi-Square Test for Goodness of Fit
chisq.test(tbl)

df %>%
  table() %>%
  chisq.test()

# Graphics
df %>%
  ggplot(aes(marital)) + geom_bar()
  
# Race, PartyID, Religion, Denomination, RIncome

# Race
df2 <- gss_cat %>%
  select(race) %>%
  filter(race %in% 
           unique(race)) %>%
  mutate(race = fct_drop(race)) # Drops Null Values

tbl2 <- table(df2)
View(tbl2)

chisq.test(tbl2)

df2 %>%
  table() %>%
  chisq.test()

df2 %>%
  ggplot(aes(race)) + geom_bar()

# PartyID
df3 <- gss_cat %>%
  select(partyid) %>%
  filter(partyid %in% 
           unique(partyid)) %>%
  mutate(partyid = fct_drop(partyid)) # Drops Null Values


tbl3 <- table(df3)
View(tbl3)

chisq.test(tbl3)

df3 %>%
  table() %>%
  chisq.test()

df3 %>%
  ggplot(aes(partyid)) + geom_bar()

# Religion
df4 <- gss_cat %>%
  select(relig) %>%
  filter(relig %in% 
           unique(relig)) %>%
  mutate(relig = fct_drop(relig)) # Drops Null Values


tbl4 <- table(df4)
View(tbl4)

chisq.test(tbl4)

df4 %>%
  table() %>%
  chisq.test()

df4 %>%
  ggplot(aes(relig)) + geom_bar()

# Denomination
df5 <- gss_cat %>%
  select(denom) %>%
  filter(denom %in% 
           unique(denom)) %>%
  mutate(denom = fct_drop(denom)) # Drops Null Values


tbl5 <- table(df5)
View(tbl5)

chisq.test(tbl5)

df5 %>%
  table() %>%
  chisq.test()

df5 %>%
  ggplot(aes(denom)) + geom_bar()

# RIncome
df6 <- gss_cat %>%
  select(rincome) %>%
  filter(rincome %in% 
           unique(rincome)) %>%
  mutate(rincome = fct_drop(rincome)) # Drops Null Values


tbl6 <- table(df6)
View(tbl6)

chisq.test(tbl6)

df6 %>%
  table() %>%
  chisq.test()

df6 %>%
  ggplot(aes(rincome)) + geom_bar()