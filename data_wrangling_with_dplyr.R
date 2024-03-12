#select : df_name=select(df_name,-column_names)
#         df_naem=select(df_name,column1,column2) => extract existing variable
#filter:  df_name=filter(df_name, column_name>value) => print values in column greater than value
# slice: df_name=slice(df_name, value:value) => seprate rows
# mutate: df_name=mutate(df_name,raito=column1/column2)
# summarise:

View(mtcars)
df1=select(mtcars,-vs,-am)
View(df1)
data()
View(msleep)
df2=filter(mtcars,hp>100)
View(df2)
df3=mutate(mtcars,new=disp+hp)
View(df3)
df4=slice(mtcars,2:15)
View(df4)
df5=arrange(mtcars,disp) # will arrange accordint to increasing order of disp
View(df5)
df6=group_by(mtcars,cyl)  # wil group the columns dataset
View(df6)
mean=summarise(df6,mean=mean(disp))  #it will find mean but by group wise as we grouped data initially
View(mean)

df7=mtcars
mean1=summarise(df7,mean=mean(cyl))  # it will summarise but ungrouped
View(mean1)

View(mpg)

# to extract data of model only A4 

df8=filter(mpg,model=='a4')
View(df8)

df9=filter(mpg,year==1999,fl=='r')
View(df9)

# arrange data of mpg in descending order of cyl

df10=arrange(mpg,desc(cyl))  # will arrange the cyl in descending order
View(df10)

#remove the column drv from mpg

df11=select(mpg,-drv)
View(df11)

# group the data class-wise
df12=group_by(mpg,class)
View(df12)

# calculate mean and standard deviation of displ and hwy class-wise

mean3=summarise(df12,mean=mean(displ),sd=sd(displ))
View(mean3)

mean4=summarise(df12,mean=mean(hwy),sd=sd(hwy))
View(mean4)
mean5=summarise(df12,mean_dspl=mean(displ),sd_dspl=sd(displ),mean_hwy=mean(hwy),sd_hwy=sd(hwy))
View(mean5)

# in dplyr pipe operator is used as connector
# shortcut key for pipe operator is ctrl+shift+m 

df13= filter(mpg,year==1999)%>%arrange(cty)  # using pipe operator
View(df13)
