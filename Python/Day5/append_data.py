from logging import exception


def test(file):
    num=input("Enter the values:")
    num1=input("Enter the second values:")
    try:
        with open(file,'a') as f:
            f.write(num+'\n')
            f.write(num1+'\n')
    except Exception as e:
        print(f"The error message is{e}")

file="sample.txt"
test(file)
