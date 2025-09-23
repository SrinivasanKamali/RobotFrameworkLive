import re

num=input("Enter the values:")
a=re.sub(r'\s+',' ',num).strip()
print(a)