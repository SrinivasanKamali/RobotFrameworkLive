import  json

file_name="emp.json"
with open(file_name,"r") as f:
    data=json.load(f)

for emp in data:
    print(emp['name'])
    print(emp['age'])
    print(emp['dept'])