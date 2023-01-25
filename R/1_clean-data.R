#
# CLEAN DATA
#


library('tidyverse')


attach(faithful)


faithful2 <- faithful %>% 
  as_tibble() %>% 
  mutate(waiting.minute = waiting / 60)

fs::dir_create('app/data')


plot(faithful2$eruptions, faithful2$waiting.minute, type = "h")

saveRDS(faithful2, "app/data/faithful2.rds")
