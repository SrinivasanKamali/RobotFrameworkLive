import pandas as pd
import numpy as np

data={'name':['srini','kamali','kutty','amir','gokul','mani'],
      'dept':['CS','ECE','MBBS','MBBS','CS','Own'],
      'salary':[200000,300000,60000,90000,50000,30000]}
df=pd.DataFrame(data)
print(df)

#group by name and dept
a=df.groupby('dept')['salary'].mean()
print(a)

#group by name and dept
a2a=df.groupby('dept')['salary'].mean()
print(a2a)