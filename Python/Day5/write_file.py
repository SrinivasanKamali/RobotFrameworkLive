def sample(file):

    num=input("Enter the values:")

    try:
        with open(file,'w') as f:
            f.write(num)

    except Exception as e:
        print(f"The error message is {e}")


file="sample.txt"
sample(file)