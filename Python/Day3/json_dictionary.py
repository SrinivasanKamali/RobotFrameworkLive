import json
from fileinput import filename

employees=[{'name':'srini','age':90,'dept':'BCA'},
     {'name':'kamali','age':95,'dept':'BE'},
     {'name':'kutty','age':98,'dept':'MBBS'},
     {'name':'amir','age':97,'dept':'MBBS'},
     {'name':'gokul','age':90,'dept':'CSE'}]

file_name="emp.json"

with open(file_name,"w") as f:
    json.dump(employees,f)

print(f"Employee data saved to this file - {file_name}")