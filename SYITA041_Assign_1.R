# name: Ayush Jain 
# roll: SYITA041
#SET-B

# Import the data set of mobile details
#Give a new name to data set, how many rows and columns are there in dataset
# Create a new data with following properties
#Dual sim value is equal to 1 only(column name dual_sim)
#grouped data with three_g value and for same data find average of battery power of mobile 
#Spread data of dual_sum as per internal memory
#arrange data in descending order of clock speed

#task 1: assigning new name to data set
mobile_data=test
View(mobile_data) #data set 'test' had given a new name 'mobile_data'

#task2: dual sim value ==1
data_task2=filter(mobile_data,dual_sim==1)
View(data_task2)

# task 3:grouped data with three_g value and for same data find average of battery power of mobile 
data_task3=group_by(mobile_data,three_g)
View(data_task3)
mean=summarise(data_task3,m1=mean(battery_power))
View(mean)
# task 4:Spread data of dual_sum as per internal memory
data_task4=spread(mobile_data,dual_sim,int_memory)
View(data_task4)

# task5 :arrange data in descending order of clock speed
data_task5=arrange(mobile_data,desc(clock_speed))
View(data_task5)
