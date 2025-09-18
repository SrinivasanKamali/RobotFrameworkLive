num=int(input("Enter the number:"))
a=0
b=1
sum1=0
print(a)
print(b)
for i in range(1,num+1):
    sum1 = a + b
    a = b
    b = sum1
    if sum1>=49:
        break
    else:
        print(sum1)



