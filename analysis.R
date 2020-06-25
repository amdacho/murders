library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb,rate)) %>%
  ggplot(aes(abb,rate)) +
  geom_bar(width = 0.5, stat = "identity", color="black")+
  coord_flip()

#open git bash and mkdir figs directory to save barplot
ggsave("figs/barplot.png")
#test