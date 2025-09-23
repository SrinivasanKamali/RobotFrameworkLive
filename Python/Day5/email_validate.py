import re

num=input("Enter the values:")

pattern=r"^[A-Za-z0-9_%-+.]+@[A-Za-z0-9_-]+\.[A-za-z]{2,}$"

a=re.match(pattern,num)
print((bool(a)))