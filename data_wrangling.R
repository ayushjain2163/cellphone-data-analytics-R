# here we are importing "tidyr" library
library(tidyr)

data()  # command is used to access data sets from r

view(presidents)
View(co2)
View(table1)

df=table1  # creating dataframe 

df

spread(df,year,population)  # spread is used to access data columwise 
   # here population will distributed year wise

df=spread(df,year,population)
df

df1=gather(df,"year","population",3:4)  # gather is used to gather data 
  # its simply reverse of spread, 
  # here it will add up the elements of columns 3and 4 and disply year
df1

df2=marketing_campaign

df2
df3=spread(df2,V4 ,V5 )
df4=gather(df3,"marita_status","income",28:36)
df4

df5=separate(marketing_campaign,V8,c("year","month","day"),sep="-") # is used to seperate elements in column

df6=unite(df5,"date",year,month,day,sep="/")  # opposite to separate

View(table3)

df_rate=table3

df_rate=separate(df_rate,rate,c("this","out of this"),sep="/") 




