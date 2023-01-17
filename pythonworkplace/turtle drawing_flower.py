import turtle as t

t.bgcolor("black")
t.color("pink")
t.speed(0) # 1(최저)~10(빠름) 0: 최고속도

for i in range(100): # 0~99
    t.pensize(i/20)
    t.forward(i)
    t.left(65)

t.color("lightblue")
t.setheading(270)

for i in range(30):
    t.pensize(25-i/2)
    t.forward(i/4)

t.color("yellowgreen")
t.setheading(60)
for x in range(50):
    t.pensize((50-x)/2)
    t.forward(x/10)

t.ht() # hideturtle() = ht()    showturtle() = st()

t.exitonclick()