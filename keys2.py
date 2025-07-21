class Base:
    def greet(self):
        return "Hello from Base"

class Derived(Base):
    def greet(self):
        return "Hello from Derived"

# Тестовая программа
base = Base()
derived = Derived()
print(base.greet())
print(derived.greet())