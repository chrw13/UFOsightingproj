ufo <- read.csv("C:/Users/sguru/Downloads/Datasets/UFO_usaonly.csv")
View(ufo)
nca <- subset(ufo, state != "ca")
View(nca)
ca <- subset(ufo, state == "ca")
View(ca)
cadur <- as.numeric(ca$duration..seconds.)
meanca <- mean(cadur)
meanca
ncadur <- as.numeric(nca$duration..seconds.)
meannca <- mean(ncadur)
meannca
lenca <- length(cadur)
lenca
lennca <- length(ncadur)
lennca
sdca <- sd(cadur)
sdca
sdnca <- sd(ncadur)
sdnca
sdboth <- sqrt(sdca^2/lenca + sdnca^2/lennca)
zscore <- (meanca - meannca)/(sdboth)
p <- 1-pnorm(zscore)
plot(x=seq(from = -5, to= 5, by=0.1), y=dnorm(seq(from = -5, to= 5, by=0.1),mean=0), type = "l", xlab = 'mean difference', ylab = 'possibility')
abline(v=zscore, col='red')