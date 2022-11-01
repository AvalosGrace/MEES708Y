# Data ----

worm <- read.table("./data/worms.missing.txt", head = TRUE)
head(worm)
is.data.frame(worm)

worm = worm[order(worm$Area),]

tmp <- scan("./data/Lengths.dat",
            what=list(Name="",Family="",Length=0),
            na.string=".")

marine = as.data.frame(tmp)
marine[order(marine$Family,marine$Length),]  #base R method

#data.point-----


#tibble /dplyr------
library(dplyr)
worm_tbl = as_tibble(worm)

marine %>%
  #arrange(Family,Length) %>% #dplyr methods
  group_by(Family) %>%
  summarise(Length = mean(Length))