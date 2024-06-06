#Data Structures in R

#VECTOR 
#vector is a homogenious data structure that can hold only similar data type!
#vector can hold only single dimension data

#creating a vector
vec1 = c("a","b","c")
vec2 = c(1,2,3)

#extracting elements from vector

vec1[1]
vec1[2]
vec1[1:3]

# LIST
#List is a Hetrogenious data structure that can hold multiple similar data type!
#List can hold only single dimension data

#Creating a List

A= list("Aryan","Monga",443,TRUE)

#Fetching data from list

A[1]
A[1:4]


#MATRIX
#Matrix is a Homogenious Data structure that can hold on single data type
#Matrix can hold two dimensional data  [rows, columns]

#Creating a Matrix

A = matrix(c(1,2,3,4,5,6), nrow=2, ncol=3, byrow=1 )
A

#Fetching data from matrix

A[2,2]

# ARRAY
#Array is a Homogenious data structure that can hold only single datatype
#Array can hold multidimensional data

#Creating of array 

vec1=c(1,2,3,4,5,6)
vec2=c(7,8,9,10,11,12)


a = array(c(vec1,vec2),dim=c(2,3,2)) 
a
  
#DATAFRAME

#creation of Data Frame (Fruits)

fruits_data=data.frame(fruit_name= c("Apple","Banana","Strawberry"), fruit_cost=c(100,60,80))

#fetching of data
fruits_data$fruit_name
fruits_data$fruit_cost
























































































