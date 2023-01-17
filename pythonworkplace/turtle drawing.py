import turtle as t
t.shape("turtle")
t.forward(50)
t.right(90)
t.forward(50)

# 빨간 하트 그리기
import math as m
t.color("red")
t.begin_fill()
for x in range(100):
    h = m.pi*x/50
    x = 160*m.sin(h)**3
    y = 130*m.cos(h) - 50*m.cos(2*h) - 20*m.cos(3*h) - 10*m.cos(4*h)
    t.goto(x,y)
t.end_fill()

t.exitonclick()
# 노란 별 그리기

# 초록 네잎클로버 그리기