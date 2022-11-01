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

# base R
X <- merge(sales, descriptions, all = TRUE)

# dplyr
X2 <- sales %>%
  full_join(descriptions, by = "CodeNum")


library(reshape2)
baseball <- read.table("./dataraw/Transpos.dat",
                       head = FALSE,
                       col.names = c("Team", "Player", "Type", "Entry"))
baseball.m <- melt(baseball,
                   idvars = c("Team", "Player", "Type"),
                   measure.vars = "Entry")
head(baseball.m)
