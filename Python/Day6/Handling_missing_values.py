import pandas as pd
import numpy as np


data={'name':['srini','kamali','kutty','amir','gokul',np.nan],
      'dept':['CS','ECE','MBBS',np.nan,'Business',np.nan],
      'salary':[200000,300000,60000,90000,50000,np.nan]}

df=pd.DataFrame(data)
print(df)
#missing values in Dataframe
a=df.fillna(df['salary'].mean())
print(a)