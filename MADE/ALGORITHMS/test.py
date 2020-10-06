import inspect, traceback
a = 1_000_000
b = 1_000_000
print(a is b)
print(id(a))
print(id(b))

def foo():
    a1 = 1_000_000
    b1 = 1_000_000
    print(a1 is b1)
    print(id(a1))
    print(id(b1))

foo()
print(inspect.stack())