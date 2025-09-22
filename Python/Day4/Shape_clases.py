from abc import ABC,abstractmethod
import math

class shape:
    @abstractmethod
    def __init__(self):
        raise NotImplementedError("Enter the corret values")

class circle(shape):
    def __init__(self,radius):
        self.radius=radius

    def area(self):
        return math.pi*self.radius**2
class square(shape):
    def __init__(self,side):
        self.side=side

    def area(self):
        return  self.side**2

c=circle(5)
d=square(4)
print(c.area())
print(d.area())