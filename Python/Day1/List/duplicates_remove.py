str1=input("Enter the input:")
result=""
result1=""
for i in str1:
    if i not in result:
        result=result+i
print("First occurance remove second values :",result)

#only print non duplicated values
for j in str1:
    if str1.count(j)==1:
        result1=result1+j
print("Non duplicated values:",result1)
