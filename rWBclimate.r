if (!require("rWBclimate")) install.packages("rWBclimate")
if (!require("ggplot2")) install.packages("ggplot2")


##### country list
country.list <- c("VNM","THA","KHM","LAO")

#country.dat <- get_historical_precip(country.list,"year")
country.dat <- get_historical_temp(country.list,"year")

ggplot(country.dat,aes(x=year,y=data,group=locator)) +
  geom_point() +
  geom_path() +
  ylab("Average annual precipitation") +
  theme_bw() +
  xlab("Year") +
  stat_smooth(se=F,colour="red") +
  facet_wrap(~locator,scale="free")
