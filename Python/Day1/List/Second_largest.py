num=list(range(1,16))
large=num[0]
second_large=num[0]

for i in num:
    if i>large:
        second_large=large
        large=i
    elif i>second_large and i!=large:
        second_large=i
print("Largest values:",large)
print("Second largest values:",second_large)