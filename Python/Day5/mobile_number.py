import re

text= """
John: 9876543210
Mary: +91-98765-43210
Office: (987)6543210, 123-456-7890
"""
pattern=r"(?:\+?\d{1,3}[-.\s]?)?(?:\(?\d{2,4}\)?[-.\s]?)?\d{2,4}[-.\s]?\d{4}?"

a=re.findall(pattern,text)
print(a)