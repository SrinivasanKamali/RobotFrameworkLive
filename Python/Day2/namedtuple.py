from collections import namedtuple

student=namedtuple('Student',['name','rollno','marks'])

s1=student(name='srini',rollno=101,marks=98)
s2=student(name='kamali',rollno=102,marks=99)
s3=student(name='kuttty',rollno=103,marks=99)

print(f"name:",{s1.name},"rollno:",{s1.rollno},"marks:",{s1.marks})
print(f"name:",{s2.name},"rollno:",{s2.rollno},"marks:",{s2.marks})
print(f"name:",{s3.name},"rollno:",{s3.rollno},"marks:",{s3.marks})

print(s1)
print(s2)
print(s3)
