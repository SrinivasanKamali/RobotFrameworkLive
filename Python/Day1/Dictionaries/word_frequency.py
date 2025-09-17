str1=input("Enter the values:")
a=str1.split()
d={}

for i in a:
    if i in d.keys():
        d[i]=d[i]+1
    else:
        d[i]=1

print("The word frequecies are:",d)
