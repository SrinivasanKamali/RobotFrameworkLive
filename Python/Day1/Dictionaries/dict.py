num={"car":7000000,"bike":250000,"cycle":10000,"scooty":90000,"EV":20000}

#update the value
num.update({"car":90000000})
print(num)


#Find the highest values
b=max(num.values())
print(b)

#help of loop
max_key=None
max_val=float('-inf')
for k,v in num.items():
    if v>max_val:
        max_key=k
        max_val=v
print(max_key,max_val)

#delete a items
num.pop("EV")
print(num.keys())