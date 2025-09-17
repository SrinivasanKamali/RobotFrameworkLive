num=list(range(1,16))
smallest=num[0]
second_smallest=float('inf')

for i in num:
    if i<smallest:
        second_smallest=smallest
        smallest=i
    elif i<second_smallest and i!=smallest:
        second_smallest=i
print("Smallest values:",smallest)
print("Second smallest values:",second_smallest)