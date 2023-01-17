# 랜덤으로 낙서하는 거북이

import turtle as t
import random

t.shape("turtle")
t.bgcolor("#f2ef8a")
t.speed(0) # 1(최저)~10(빠름) 0: 최고속도

for x in range(200):
    a = random.randint(1,360)
    t.setheading(a)
    b = random.randint(1,30)
    t.forward(b)
    t.pensize(x/20)

t.exitonclick()