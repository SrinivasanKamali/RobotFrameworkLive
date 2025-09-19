num=int(input("Enter the numbers:"))
d=[]
for i in range(num+1):
    d.append(i)
x=map(lambda a:a*2,d)
print(list(x))

y=map(lambda b:b*2,range(1,10))
print(list(y))
