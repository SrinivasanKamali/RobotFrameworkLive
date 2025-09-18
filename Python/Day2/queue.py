from collections import deque

queue=deque()
queue.append(10)
queue.append(20)
queue.append(30)

print("new values:",queue)
print("length of :",len(queue))
print(queue[0])
print(queue[-1])
queue.popleft()
print("after pop:",queue)
print("is empty?",not queue)