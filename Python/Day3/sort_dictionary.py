num=[{'name':'srini','age':90,'salary':1000000},
     {'name':'kamali','age':95,'salary':2000000},
     {'name':'kutty','age':98,'salary':3000000},
     {'name':'amir','age':97,'salary':4000000},
     {'name':'gokul','age':90,'salary':5000000}]
x=sorted(num,key=lambda a:a['age'])
print(x)