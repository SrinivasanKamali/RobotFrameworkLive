from functools import reduce

num=int(input("Enter the numbers:"))
x=reduce(lambda a,b:a*b,range(1,num+1))
print(x)