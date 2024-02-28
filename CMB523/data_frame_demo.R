hostpital_data<-read.csv(file = "~/../Downloads/ProgAssignment3-data/hospital-data.csv",sep = ",",header = T)
str(hostpital_data)


# Create a data frame
my_df1 <- data.frame(
  Name = c("Enrique", "Eun Ae", "A"),
  Age = c(25, 19, 26),
  Gender = c("Man", "Woman", "What are you, a cop?"),
  stringsAsFactors = FALSE  # Prevents R from converting strings to factors
)

# Print the data frame
print(my_df1)

my_df2<-data.frame(
  matrix(
    nrow =3,
    ncol = 3
  )
)
print(colnames(my_df2))
colnames(my_df2)<-c("Name","Age","Gender")
my_df2$Name<-c("Enrique", "Eun Ae", "A")
my_df2$Age<-c(25, 19, 26)
my_df2$Gender<-c("Man", "Woman", "Seriously, bugger off!")
print(my_df2)

##Get data, at a glance
data(mtcars)
head(mtcars)
tail(mtcars)

#accessing/subsetting data
print(mtcars$wt)
print(mtcars[4,2]) #row, then column
print(mtcars$cyl[2]) #get the 2nd entry in the cyl column
print(mtcars[2:5,3:5]) #get the 2nd-5th rows' third-5th columns
print(mtcars[,"gear"]) #get the gear column. The empty row + comma means all rows
print(mtcars["Honda Civic",]) #get the honda civic row. Empty col + comma means all cols
#keep only entries with less than 100 horse power and less than 200 disp
print(subset(mtcars, hp<100 & disp < 200))
#do the same thing a different way
print(mtcars[which(mtcars$hp<100&mtcars$disp<200),])
#prove it, by checking if they are identical
print(identical(subset(mtcars, hp<100 & disp < 200),
          mtcars[which(mtcars$hp<100&mtcars$disp<200),]))


mtcars2<-cbind(mtcars,1:32) #add a new column containing the numbers 1-32
print(mtcars2)
mtcars2<-mtcars2[,-ncol(mtcars2)] #remove the column we just added
print(mtcars2)
mtcars2$newCol<-1:nrow(mtcars2) #add a new column with name newCol
print(mtcars2)

#summarize the data frame
print(summary(mtcars))
print(table(mtcars$disp)) #counts the occurencees of each disp value
print(str(mtcars)) #prints the structure
print(nrow(mtcars)) #prints the number of rows
print(ncol(mtcars)) #prints the number of cols
print(colnames(mtcars)) #accesses the colnames
print(rownames(mtcars)) #accessing the row names (not always there)
print(dim(mtcars)) #get both dimensions

#changing values
colnames(mtcars2)[(colnames(mtcars2)=="wt")]<-"weight" #change the column name wt to weight
print(colnames(mtcars2))
mtcars2$disp<-round(mtcars2$disp) #round the values in disp
print(mtcars$disp)
print(mtcars2$disp)
#change the 3rd row, 3rd col from 108 to 109 (by adding 1!)
print(mtcars2[3,3])
mtcars2[3,3]<-mtcars2[3,3]+1
print(mtcars2[3,3])

