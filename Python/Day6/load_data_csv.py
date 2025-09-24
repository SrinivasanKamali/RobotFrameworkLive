import pandas as pd

data=pd.read_csv("students.csv")

df=pd.DataFrame(data)
print(df.to_string())

#max marks
a=df['marks'].max()
print(a)

b=df[df['marks']==a]
print(b)

#average marks
c=df['marks'].mean()
print(c)

#above average
d=df[df['marks']>c]
print(d)