#Data Manipulation is the process of finding insights by filtering, aggregating and summarizing raw data!

#dplyr library used for data manipulation

library(dplyr)

laptop = read.csv("C:/Users/hp/Downloads/laptop_pricing_dataset.csv")
View(laptop)

str(laptop)

#fetching only 2,3 column by index

col_2_3 = laptop %>% select(2,3)
col_2_3

#fetching only 2,3 column by column name

col_2__3 = laptop %>% select("Manufacturer","Category")
col_2__3

# ---------starts with and ends with

#fetch columns whose name starts with P
st = laptop %>% select(starts_with("P"))
View(st)

#fetch columns whose name ends with R
en = laptop %>% select(ends_with("r"))
View(en)


# ---------Filtering 

#find the data in which Manufacturer is Acer
acer = laptop %>% filter(Manufacturer=="Acer")
acer

#find the data in which Manufacturer is HP and screen is Full HD
hp = laptop %>% filter(Manufacturer=="HP" & Screen=="Full HD")
hp

# find the data whose screen size greater than 35
screen = laptop %>% filter(Screen_Size_cm>35)
screen


#combine select and filter 

#select only Manufacturer,Category,Screen and filter where manufacters = Hp and category 4

sle_fil = laptop %>% select("Manufacturer","Category","Screen") %>% filter(Manufacturer=="HP" & Category==4)
sle_fil

