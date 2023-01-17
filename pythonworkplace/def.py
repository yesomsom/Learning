def hello2(name): # name을 인자로 받아 Hello와 함께 출력
    print("Hello!", name)

hello2("Jay")
hello2("May")
hello2("Mike")

def square(a):
    c = a * a
    return c

def triangle(a, h):
    c = a * h /2
    return c

s1 = 4
s2 = square(s1)
print(s1, "    ", s2)

print(triangle(3,4))

d = triangle(3,4)
print(int(d))
