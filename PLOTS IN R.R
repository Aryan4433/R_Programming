library(ggplot2)

View(diamonds)


#HISTOGRAM 

ggplot(data= diamonds, aes(x=price)) + geom_histogram(bins=100, color="black", fill="gray",col="red")


#BARPLOT 

ggplot(data=diamonds, aes(x=cut,fill=cut)) + geom_bar()
ggplot(data=diamonds, aes(x=cut)) + geom_bar(fill="red")


#SCATTERPLOT

ggplot(data=diamonds, aes(x=carat,y=price,col=cut)) +geom_point()


#BOXPLOT

ggplot(data=diamonds, aes(x=clarity,y=carat,fill=clarity)) +geom_boxplot()

#faceting

ggplot(data=diamonds, aes(x=clarity,y=carat,fill=cut)) +geom_boxplot()+facet_grid(~cut)


