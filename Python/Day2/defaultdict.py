from collections import defaultdict

#test_list=['srini','kamali','kuttty','amir','gokul']
str1=input("Enter the values:")
b=str1.split()
a=defaultdict(list)

for i in b:
    a[i[0]].append(i)

print(a)