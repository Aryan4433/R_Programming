#STATISTICAL ANALYSIS IN R 


df = read.csv("D:/Datasets/Iris Flower dataset/Iris.csv")
View(df)

#Data Exploration 
#mean
mean(df$SepalLengthCm)

#median
median(df$PetalWidthCm)

#mode
mode(df$Species)


# correlation
cor(df$SepalLengthCm,df$PetalLengthCm,method="spearman")

plot(df$SepalLengthCm,df$PetalLengthCm)

# Regression - linear model

model = lm(df$SepalLengthCm~df$PetalLengthCm,data=df)
summary(model)


abline(lm(df$SepalLengthCm~df$PetalLengthCm, data=df))

#T test basically used when the 2 set of population data are normally distributed!

d1= subset(df$PetalLengthCm,df$Species == "setosa")
d2= subset(df$PetalLengthCm,df$Species == "virginica")

t.test(d1,d2)


table(df$Species)        

#Annova test is a analysis of variance

aov.model= aov(df$PetalLengthCm~ df$species, data=df)
summary(aov.model)


install.packages(pheatmap)
library(pheatmap)
pheatmap(df)
