# No 4A
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# No 4B
bartlett.test(Length~V1, data=dataoneway)

# No 4C
qqnorm(group1$Length)
qqline(group1$Length)

# No 4D
p-value =  0.8054.

# No 4E
model1 <- lm(Length~Group, data=myFile)
anova(model1)
TukeyHSD(aov(model1))

# No 4F
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")