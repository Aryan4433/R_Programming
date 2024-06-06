#Pookemon

Pooke= read.csv("C:/Users/hp/Downloads/Pookemon.csv")
View(Pooke)

#checking number of rows and columns

nrow(Pooke)
ncol(Pooke)

table(Pooke$type1)

#max and min in hp
max(Pooke$hp)
min(Pooke$hp)

#max and min in speed
max(Pooke$speed)
min(Pooke$speed)

#checking missing values
is.na(Pooke)
sum(is.na(Pooke))


#fetching names of columns

colnames(Pooke)

#changing names of columns type 1, type 2 , name

colnames(Pooke)[colnames(Pooke)=='type1'] ="Primary_type"
colnames(Pooke)[colnames(Pooke)=='type2'] ="Secondary type"
colnames(Pooke)[colnames(Pooke)=='name'] ="Pookemon Name"
View(Pooke)

#grass mon

grass = Pooke %>% filter(Primary_type=="grass")

library(dplyr)
View(grass)


min(grass$speed)
max(grass$speed)

mean(grass$attack)
mean(grass$sp_defense)





#VISUALISATION
library(ggplot2)

#HP
# Your existing code
hist = ggplot(data=Pooke, aes(x=hp)) + geom_histogram(fill="lightblue", color="black", bins=30)

# Add data labels
hist = hist + stat_bin(aes(label=..count..), bins=30, geom="text", vjust=-0.5)



hist =ggplot(data=Pooke, aes(x=hp)) + geom_histogram(fill="lightblue", color="black",bins=30)
plot(hist)



#height 
ggplot(data=grass, aes(x=height_m)) + geom_histogram(fill="lightblue", color="black",bins=30)

#defense
ggplot(data=grass, aes(x=sp_defense)) + geom_histogram(fill="lightblue", color="black",bins=30)

#weight
ggplot(data=grass, aes(x=weight_kg)) + geom_histogram(fill="lightblue", color="black",bins=30)

#legandary vs non legandary

l=ggplot(data=grass, aes(x=is_legendary)) + geom_histogram(fill="lightblue", color="black",bins=30)
l= l+ stat_bin(aes(label=..count..),geom="text", vjust=-0.5)
l




























