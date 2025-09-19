num=int(input("Enter the numbers:"))
d=[]
for i in range(1,num+1):
    d.append(i)

x=list(filter(lambda a:a%3==0,d))
print(x)