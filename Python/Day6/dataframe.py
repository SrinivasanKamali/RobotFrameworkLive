import pandas as pd

data={'name':['srini','kamali','kutty','amir','gokul','mani'],
      'dept':['CS','ECE','MBBS','CA','Business','Own'],
      'salary':[200000,300000,60000,90000,50000,30000]}

df=pd.DataFrame(data)
print(df)

#filter employees salary >60000
a=df[df['salary']>60000]
print(a)

#add a column bonus=salary*0.1
df['Bonus']=df['salary']*0.1
print(df)

#descending order salary
c=df.sort_values(by='salary',ascending=True)
print(c)