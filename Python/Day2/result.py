mark=int(input("Enter the marks from 0 to 100:"))

if mark<0 or mark>100:
    print("Invalid mark,Please enter the mark between 0 to 100")
elif mark>=90:
    print("Grade A")
elif mark>=75:
    print("Grade B")
elif mark>=50:
    print("Grade C")
elif mark>=35:
    print("Grade D")
else:
    print("Result is fail")