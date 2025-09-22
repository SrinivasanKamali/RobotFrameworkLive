
class animal:
    def sound1(self):
        print("Animal sound languages")
class dog(animal):
    def sound1(self):
        print("Dog's are barking")
class cat(animal):
    def sound1(self):
        print("cats sound meow")

def speak(sample):
    sample.sound1()

d=dog()
c=cat()
a=animal()
speak(a)
speak(d)
speak(a)