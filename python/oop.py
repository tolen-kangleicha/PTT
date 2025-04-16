class Person:
    def __init__(self, name, age ):
        self.name = name
        self.age = age
    def greet(self):
        print("Hii all, I am", self.name, "and I am ", self.age, "years old. ")
        
tolen = Person("tolen", 30)
print(tolen.name)
print(tolen.age)
tolen.greet()

