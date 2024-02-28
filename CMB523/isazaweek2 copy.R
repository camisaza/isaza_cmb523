#Camila Isaza week 2 assignment


#task 1
### make a list of 100 random numbers between 1 and 1000 named my_list
my_list<-sample(x = 1:1000,size = 100,replace = T)
### counts and prints the number of redundant numbers
print(length(my_list)-length(unique(my_list)))
### removes redundant numbers from the list
my_list<-unique(my_list)
### prints the length of the current list
print(length(my_list))
### makes a scatterplot of the list
plot(x=1:length(my_list),y=my_list)
### normalizes the values in the list to be between 0 and 1
my_list<-(my_list-min(my_list))/(max(my_list)-min(my_list))
### makes a scatterplot of the list
plot(x=1:length(my_list),y=my_list)



#task 2
### make a list of 100 random numbers between 1 and 1000 named my_list
my_list<-sample(x = 1:1000,size = 100,replace = T)
### prints the length of the current list
print(length(my_list))
### prints the average of the list, rounded to an integer
print(round(mean(my_list)))
### prints the median of the list, rounded to an integer
print(round(median(my_list)))
### sorts the list from highest to lowest
my_list<-my_list[order(-my_list)]
###Remove the 1st item from the list
my_list<-my_list[-1]
### prints the average of the list, rounded to an integer
print(round(mean(my_list)))
### prints the median of the list, rounded to an integer
print(round(median(my_list)))


#task 3
### make a list of 100 random numbers between 1 and 1000 named my_list
my_list<-sample(x = 1:1000,size = 100,replace = T)
### remove all numbers less than 420
my_list<-my_list[my_list>=420]
#list has now 97 items so odd so sorting highest to lowest
### sorts the list from highest to lowest
my_list<-my_list[order(my_list)]
### prints the 6th number from the list
print(my_list[6])
### counts and prints the number of redundant numbers
print(length(my_list)-length(unique(my_list)))


#task4
### make a list of 100 random numbers between 1 and 1000 named my_list
my_list<-sample(x = 1:1000,size = 100,replace = T)
### picks a random spot between 1 and the length of the list, saves it as my_spot
my_spot<-sample(x = 1:length(my_list),size = 1)
### prints the number in my_spot in the list
print(my_list[my_spot])
### prints the number in my_spot in the list
print(my_list[my_spot])
### randomly shuffle the list
my_list<-my_list[sample(x=1:length(my_list),size = length(my_list),replace = F)]
### prints the sum total of the numbers in the list
print(sum(my_list))
