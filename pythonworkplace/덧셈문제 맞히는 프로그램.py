import random

a = random.randint(1,30)
b = random.randint(1,30)

print(a, "+", b, "=")
x = input()
c = int(x)

if a + b == c:
    print("정답입니다.")

else:
    print("정답이 아닙니다.")



n = random.randint(1,10)

while True:
    x = input("다음 문제입니다. 숫자를 맞혀보세요.(1~10)")
    g = int(x)

    if g == n:
        print("정답입니다.")
        break

    if g < n:
        print("숫자가 작습니다.")
        
    if g > n:
        print("숫자가 큽니다.")