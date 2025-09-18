from collections import deque


stack=deque()
stack.append(10)
stack.append(20)
stack.append(30)
print(stack)
print("top element:",stack[-1])
print(stack.pop())
print("After poped:",stack)
print("Is empty?", not stack)