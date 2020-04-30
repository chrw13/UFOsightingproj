UFO <- read.csv("C:/Users/sguru/Downloads/Datasets/UFO.csv")
View(UFO)
us.data<-subset(UFO,UFO$country=="us")
View(us.data)
write.csv(us.data, "C:/Users/sguru/Downloads/Datasets/UFO_usaonly.csv", row.names = FALSE)
ufo <- read.csv("C:/Users/sguru/Downloads/Datasets/UFO_usaonly.csv")
View(ufo)
plotting <- data.frame(table(ufo$state))
library(ggplot2)
bar1 <- ggplot(data = plotting, mapping = aes(x = reorder(Var1, -Freq), Freq)) + geom_bar(stat = "identity", color = "black", fill = "white")
bar1
bar1 <- bar1 + labs(y="Frequency",x="State", title = "Amount of UFO sightings per state")
bar1
above <- subset(plotting, plotting$Freq >= 1500)
above
bar2 <- ggplot(data = above, mapping = aes(x = reorder(Var1, -Freq), Freq)) + geom_bar(stat = "identity", color = "black", fill = "white")
bar2 <- bar2 + labs(y="Frequency",x="State", title = "States with UFO above 1500 UFO sightings")
bar2
