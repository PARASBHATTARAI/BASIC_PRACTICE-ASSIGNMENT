###1. Use R code to get a description of the version of R and its attached packages used in the 
###current session?

sessionInfo()


### 2. Create an object that has the list of all the installed packages in your system. 
     InstallPackage <- installed.packages()

### 3. Create an object with the following data types and check their data types by using the class 
### function after creation 
     
###a. integer
 INT <- as.integer(2255)
class(INT)

###b. numeric 
 NUM <- 234567890
 class(NUM)
 
###c. character
     
 CHAR <- "MYNAME"
 class(CHAR)
 
 
 
### d. logical 
 
 LOG <- TRUE
 class(LOG)
 
 
###e. complex 
  COMP <- 5+3i
  class(COMP)




### 4. Create the following objects: 

  object_1 <- "my_text"

  object_2 <- 123.456

  object_3 <- 123.456 

  object_4 <- 0 

  object_4 <- FALSE 

 
  
  
   ###Perform type casting on each of the object. (Convert each of the objects into different available data 
                                             ###types and analyze the results). 
  

### 5. List all the objects in the current session.
  
  View(ls())
  
  
### 6. Convert the data "1/December/1998" into a Date type. 
  require(lubridate)
  DATE <-lubridate::dmy("1/December/1998")
  class(DATE)
  
  
### 7. Find the number of years from the Independence of India till present. 
  
  
  
  IND <- lubridate::dmy("15 AUG 1947")
  PDATE <- Sys.Date()    
      
  View(round(as.numeric(difftime(PDATE, IND, units = "weeks"))/52.25, 0))
  
  
  
### 8. Convert the following text into a Date format: 
###"On the 16th of December the hostilities between the two countries ended and a new nation 
### was formed in the winter of 1971" (Hint: Use lubridate) 
  
  DATE1 <- lubridate::dmy("On the 16th of December the hostilities between the two countries ended and a new nation 
                  was formed in the winter of 1971")
  
  
  
### 9. Convert the string "December-31-2018" to a date format and extract the month. (Hint: use lubridate) 

DATE2 <- lubridate::mdy("December-31-2018")

DATE3 <- as.Date("December-31-2018", format = "%B-%d-%Y")


### 10. Create a vector with 5 numbers and find the data type of it. 

VECTOR_1 <- c(15,25,30,35,45)

class(VECTOR1)




###11. Create a vector with 5 numbers and 1 text and find the data type of it. 

VECTOR_2 <- c(15,25,30,35,45,"MUMBAI")

class(VECTOR2)
View(VECTOR3)




### 12. Create a vector with number from 1 to 1000 with a step of 10. (Hint: use seq()) 

VECTOR_3 <- seq(from = 1,to =1000, by= 10 )


### 13. Create a vector V1 having numbers from 11 to 20. (Hint: use n:m ) 

V1 <- (11:20)




### 14. Extract the 5th, 7th and 9th element of the vector v1 and save it in an object V2. 

V2 <- V1[c(5,7,9)]





### 15. Save the first 9 elements of the vector V1 in a separate object naming 'V3'. 

V3 <- V1[1:9]




### 16. Create a vector "Airport.Codes" with the following information: 
  
  
  
  
  
Airport.Codes <- c("DEL","BOM","PUN","MAA","DEL","MAA","PUN","DEL","MAA","PUN","PUN","DEL","BOM")

View(Airport.Codes)


### 17. PUN is the incorrect airport code and it should be PNQ. Replace the values in the vector Airport.Codes.


Airport.Codes[Airport.Codes == "PUN"] <- "PNQ"
View(Airport.Codes)

### 18. Create vector "x" with the values {4, 4, 5, 6, 7, 2, 9}.

X = c(4, 4, 5, 6, 7, 2, 9)




### a. Calculate the number of observation (n), mean, sum, max, min, variance of the vector 'x".
length(X)
mean(X)
sum(X)
max(X)
min(X)
var(X)

### b. Also print the 3rd element, odd positions elements and elements from 2 to 6 positions.

X[3]
X[c(seq(from = 1, to =7 , by =2))]
X[2:6]


### 19. Create a vector 'Age' with values from 1 to 99. 


AGE <- (1:99)
View(AGE)

###20. Create a vector 'Young.Old' by extracting values from 1 to 18 and 80 to 99 from Age Vector. 

Young.Old <- AGE[c(1:18,80:99)]
View(Young.Old)


###21. Find the number of elements in the vector Young.Old. 

length(Young.Old)

### 22. Find the sum, mean, median, min and max age in the vector Young.Old. 

sum(Young.Old)
mean(Young.Old)
median(Young.Old)
min(Young.Old)
max(Young.Old)


### 23. Create 6x4 matrix (6 rows and 4 columns) using 1 to 24 numbers

MATRIX_1 <- matrix(data = 1:24, nrow = 6, ncol = 4)
View(MATRIX_1)


###24. Create a vector 'for.m' which has 30 numeric values. Use this vector to create a matrix my_matrix with 10 rows.

for.m <- 31:60
my_matrix <- matrix(data = for.m, nrow = 10, ncol = 3)
View(my_matrix)


### 25. Extract the 1st, 5th and 9th row of the 1st and 2nd column from the matrix my_matrix.

 my_matrix[c(1,5,9),c(1,2)]
 
 
 ### 26. Create data frame with the below vectors
 
 
X1<- c(111,208,113,408)
X2 <- c(25,34,28,52)
X3 <- c("Type1", "Type2", "Type1", "Type1")
X4 <- c("Poor","Improved","Excellent","Poor")

MYDATA_FRAME <- data.frame("StoreID" = X1,"Tenure" = X2,"StoreType" = X3,"status" = X4)
View(MYDATA_FRAME)


### 27. Print the data in different programs.

### a. only storeId, tenure
c(MYDATA_FRAME$StoreID,MYDATA_FRAME$Tenure)


### b. only storetype and status

c(MYDATA_FRAME$StoreType,MYDATA_FRAME$status)

### c. only tenure
MYDATA_FRAME$Tenure









### 28. Create a data.frame 'Employee.Info' by combining vectors. The table should have 4 columns with 5 rows. 
###The columns should be - 'Employee.ID' , 'Employee. Name', 'Employee.Salary' , 'Employee.Department'. 
### (Provide arbitrary values for the rows).


Employee.Info <- data.frame("Employee.ID" = X1 ,"Employee.Name" = X2,"Employee.Salary" =X3 ,"Employee.Department" =X4 )

View(Employee.Info)



### 29. Create different factors using the below vectors and label the values and order levels for 
###factors "outcome" and "status".


###a. ethnicity - White", "African amrican", "White", "Asian"
###b. status - Poor", "Improved", "Excellent", "Poor"
### c. outcome - c(1, 3, 2, 4, 3, 1, 1) - labels- "Poor", "Average", "Good", "Excellent"











###30. Create list called "mylist" with the title "My First List" and with the below objects called 
###"ages" with below h, j and k. Also print the different combinations of objects.

## Doubt


#h -numeric vector with the values 25, 26, 18, 39


h <- c(25,26,18,39)



#j - matrix with 5 rows and 2 columns with the values 1 to 10

j <- matrix(data =  1:10, nrow = 5, ncol = 2)

#k - character vector with the values "one", "two", "three"

k <- c("one","two","three")

MyFirstList <- list(H =h, J = j, K = k)

View(MyFirstList)


### 31. Import the stores.csv dataset and save it as df1. 

df1 <- read.csv("stores.csv")



### 32. Apply below functions on stores data frame and observe the outputs.

class(df1)
names(df1)
length(df1)
dim(df1)
str(df1)
head(df1)
tail(df1)
fix(df1)
summary(df1)
Hmisc::describe(df1)



### 33. Import the second sheet of the excel file CarData.xlsx and save it as Car.Info 

Car.Info <- readxl::read_excel("CarData.xlsx",sheet = 2)

###34. Save the object df1 as an .RData file in the hard drive (df1.RData). 

save(df1, file="df1.RData")


###35. Save all the objects created so far in a .RData File. Name it as My_Backup. 

save.image("GreatBackup.RData")


###36. Delete df1 and Car.Info from the global environment. 

rm(df1)
rm(Car.Info)

### 37. Find the names of all the current objects in the global environment and save this information 
### in an object 'Current_objects_in_GE'. 
ls()
Current_objects_in_GE <- list(CARINF = Car.Info,DATAFRAM =df1)
View(Current_objects_in_GE)


### 38. Delete all the objects available in the global environment. 

ls()
rm(Car.Info,Current_objects_in_GE,df1)




### 39. Import the df1.RData file from the hard drive. 


load("df1.RData")


### 40. Find the summary details of df1 (Hint: use summary() or Hmisc::describe()).

summary(df1)
Hmisc::describe(df1)

### 41. Find details regarding the structure of df1 (Hint: use str()) 

str(df1)


### 42. Extract the column Staff_Cnt from df1 and save it in an object 'Staff_Count'. 

Staff_Count <- df1$Staff_Cnt
View(Staff_Count)

### 43. Add 10 to every value of the vector 'Staff_Count' and name it as 'Updated_ Staff_Count'. 

Updated_Staff_Count <- Staff_Count+10
View(Updated_Staff_Count)


### 44. Add this vector 'Updated_ Staff_Count' as a column in the data.frame df1. 

df1$Updated_Staff_Count <- Updated_Staff_Count
View(df1)

### 45. Create an object 'Store_Details' by extracting the following columns from df1 - StoreCode, 
## StoreName, StoreType, Location, OwnStore. 

A <- df1$StoreCode
B <- df1$StoreName
C <- df1$StoreType
D <- df1$Location
E <- df1$OwnStore

Store_Details <- data.frame("StoreCode" =A, "StoreName" = B, "StoreType" = C, "Location" = D, "OwnStore" = E)
View(Store_Details)



### 46. Find the class of Store_Details. 

class(Store_Details)


### 47. Change the data type of the column StoreName from factor to character. 

  class(df1$StoreName)


### 48. Rename the column 'AcqCostPercust' to 'ACPC' and 'ProfitPercust' to 'PPC'.

 colnames(df1)[colnames(df1) == "AcqCostPercust"] <- "ACPC"
 colnames(df1)[colnames(df1) == "ProfitPercust"] <- "PPC"
 View(df1)
  
  
### 49. Create a column 'MarketingSpend' which has a constant value of 200. Use this column to 
### create another column 'UpdatedOperatingCost' which is OperatingCost + MarketingSpend. 
 
 
 df1$MarketingSpend <- 200
 df1$UpdatedOperatingCost <- df1$MarketingSpend+df1$OperatingCost
 View(df1)
 
#### 50. Delete the column MarketingSpend. 
 
 df1$MarketingSpend <- NULL
 
 
#### 51. In df1, the UpdatedOperatingCost should be next to the column OperatingCost. 
 
 df1 <- df1[,c(1:5,16,6:15)]
 View(df1)
 
 
### 52. In df1, Create new variable store_class as follows.

#If total sales<120 then "Low Perform store"
# If total sales>=120 and total sales<240 then "Average Perform store"
#If total sales>240 then "High Perform store"
 
 df1$Store_class <-  ifelse (df1$TotalSales < 120,"LowPerformstore",
                             ifelse (df1$TotalSales >= 120 & df1$TotalSales <240,
                                     "AveragePerformstore","HighPerformstore"))
 
### 53. Find the names of the top 3 SuperMarket stores of Delhi with the highest TotalSales. 
 require(dplyr)
 
 TOTALALL <- df1 %>% dplyr::group_by(StoreName) %>% dplyr::summarise(TOTAL = sum(TotalSales))  %>% dplyr::arrange(desc(TOTAL))

 View(head(TOTALALL,3))


### 54. Find the information such as the StoreName, TotalSales, OperatingCost and Staff_Cnt of the 
### stores where the store is owned and there is an online presence. 
 
 df1[MINIDATA$OwnStore == 1,c("StoreName","TotalSales", "OperatingCost", "Staff_Cnt")]
 
 
### 55. Check if there are any duplicate rows in df1 

duplicated(df1)
 
 
### 56. Check if there are any duplicate rows in df1 on the basis of StoreCode.
 
     duplicated(df1$StoreCode)
 
 
 
 
### 57. Create a new dataset that has removed duplicates on the basis of StoreName and StoreCode. 

     ###doubt

NEWDATA<- df1[!(duplicated(df1$StoreName) | duplicated(df1$StoreCode)),]

View(NEWDATA)

### 58. How to find missing values in the df1 dataset and recode missing values with 0? Delete the 
### missing values (if there are any) from the data set?


df1[is.na(df1)] <- 0
View(df1)

### 59. Sort the df1 data as follows

### a. Create new dataset (newstores) with sorted data by "Storetype"

newstores <- data.frame(STORE = df1$StoreType)
newstores %>% dplyr::arrange(STORE)



### Bb. Create new dataset (newstores) with sorted data by location(ascending) and totalsales in 
###descending order.

newstores <- data.frame(LOC = df1$Location, TOTALS = df1$TotalSales)
newstores %>% dplyr::arrange(LOC, desc(TOTALS))




### 60. Create subsets of data from stores data as following conditions.


#a. Only Columns 5,7, 8,9
#b. Excluding columns 5, 7, 8,9
#c. Selecting first 10 observations
#d. Observations with Storetype= Apparel and totalsales>100
#e. Columns (storecode, storename, location, totalsales) with totalsales between 100 & 300.
#f. Include all columns from Storecode to Basketsize with storetype=Electronics and 
#totalsale>100















###########################ASSIGNMENT DONE###############################