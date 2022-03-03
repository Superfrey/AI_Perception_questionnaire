

foo <- sample(c("A","B","C","D"),2000,replace = T , prob = c(0.2,0.5,0.1,0.2))
mydata <- data.frame(mydata
                     )
mydata$spg <- mydata$mydata
data_perc <- (prop.table(table(mydata$spg))) * 100
barplot(data_perc, ylab = "Percent")

library(dplyr)
library(ggplot2)

### foo is your melt data
ana <- mutate(group_by(foo, x), percent = value / sum(value) * 100) %>%
    ungroup()

### Plot once
bob <- ggplot(data = ana, aes(x = x, y = percent, fill = variable)) +
    geom_bar(stat = "identity") +
    labs(y = "Percentage (%)")

table(mydata)
library(tidyverse)


ggplot(mydata) + geom_bar(aes(y = spg))




ggplot(mydata, aes(x = factor(mydata), y = value, fill = factor(variable))) +
    geom_bar()
