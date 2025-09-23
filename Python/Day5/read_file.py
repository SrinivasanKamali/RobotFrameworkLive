def read(file):
    try:
        with open(file,'r') as f:
            for i in f:
                print(i.rstrip('\n'))
    except Exception as e:
        print(f"The error is {e}")

file="sample.txt"
read(file)