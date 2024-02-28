#Run this code line by line, section by section.
#There will be some quesitons; answer them for credit
#You can submit you answers as comments in this file
#or you can submit a seperate text document. 



#Section 1
#Assignment to variables
x <- 10 #assign the value 10 to the variable "x"
y = 5 #assign the value 5 to the variable "y"
"Stellar Work!"->z #assign the value "Stellar Work!" to the variable "z" 
p==0 #assign the value 0 to the variable p
#Question 1: Which one of these doesn't actually perform assignment?


#Section 2
#Types

help(typeof)
typeof(66)
typeof(66L)
typeof("Prof Fisk is middling but tries")
typeof(c(1,2,3,4,5))
typeof(c(1,1.1,1.2))
typeof(list(1,2,3))
#Question 2: When you ran typeof(c(1,2,3,4,5)), were you suprised with the outcome? Why?


#Section 3
#Different approaches to same task
huge_vector<-1:100000000 #make a big-ish vector of numbers (100 million)
start_time <- Sys.time() #assign the time we started to variable
result_1 <- sum(huge_vector) #add up all the numbers in the vector
end_time <- Sys.time() #assign the time we finished to variable
time1<-end_time - start_time #total time is the end time minus the start time


start_time <- Sys.time()#assign the time we started to variable
result_2 <- 0 #assign a variable that will hold the result as we go through the loop
for (element in huge_vector) {#for every element in our vector
  result_2 <- result_2 + element#add the vector to our holder variable
}
end_time <- Sys.time()#assign the time we finished to variable
time2<-end_time - start_time#total time is the end time minus the start time
#print the results
print(time1) 
print(time2)

##you are going to run the above code again; I've copied it below
##for convienence
huge_vector<-1:100000000

start_time <- Sys.time()
result_1 <- sum(huge_vector)
end_time <- Sys.time()
time1<-end_time - start_time


start_time <- Sys.time()
result_2 <- 0
for (element in huge_vector) {
  result_2 <- result_2 + element
}
end_time <- Sys.time()
time2<-end_time - start_time
print(time1)
print(time2)

#Question 3: Was time 1 the same both times? What about time 2? What do you think is happening here?



#Section 4
##indexing and subsetting

my_vector <- c(10, 20, 30, 40, 50)
# Extract the third element
element_3 <- my_vector[3]

# Extract a subset
subset_vector <- my_vector[c(1, 4)]
print(element_3)
print(subset_vector)

#Question 4: Before running the next two lines of code, read them. Do you think it'll work? Why?
subset_vector2<-my_vector[c(2,5,1)]
print(subset_vector2)
#Question 5: Were you suprised with the result of the above 2 lines? Describe what happened to the best of your ability



#Section 5
#Function defaults
toTest<-"Hello There!"
print(gsub(pattern = "e",replacement = "3",x = toTest))
print(gsub("e","3",toTest))
print(gsub(replacement = "3",x = toTest,pattern = "e"))
#this will be wrong
print(gsub("3","e",toTest))
#Question 6: The line of code above gave us the "wrong" answer, in the sense that 
#it didn't seem to do anything at all and just printed "toTest" in the same way it started
#Not needing to describe it in code (e.g., you can just say "I'd tell the program to check for this or that")
#how would you make sure that you didn't accidentally put your variables in the wrong order like happened above?
