#Inbuilt Functions in R

#View is used to see dataset
View(Iris)

#Str is used to describe dataset data
str(Iris)

#head return top 6 rows of dataset
head(Iris)

#tail return bottom 6 rows of dataset
tail(Iris)

#min return minimum value from columns
min(Iris$SepalLengthCm)

#max return maximum value from columns
max(Iris$SepalLengthCm)

#mean return mean average value of columns
mean(Iris$SepalLengthCm)

#table return the distribution of columns
table(iris$Sepal.Length)

#range return lowest to highest value from columns
range(Iris$SepalLengthCm)
