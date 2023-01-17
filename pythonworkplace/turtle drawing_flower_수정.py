import turtle as t

t.bgcolor("#008080")
t.speed(0) # 1(최저)~10(빠름) 0: 최고속도

t.color("yellow")
for i in range(50): # 0~99
    t.pensize(i/20)
    t.forward(i)
    t.left(65)

t.color("pink")
for i in range(50,117): # 0~99
    t.pensize(i/20)
    t.forward(i)
    t.left(65)

t.color("Green")
t.setheading(270)

for i in range(30):
    t.pensize(15)
    t.forward(i/4)

t.color("yellowgreen")
t.setheading(60)
for x in range(35):
    t.pensize(x*2)
    t.forward(x/10)

for x in range(32,50):
    t.pensize(200-4*x)
    t.forward(x/10)

t.ht() # hideturtle() = ht()    showturtle() = st()

t.exitonclick()

'''import turtle #turtle 모듈 사용
#--------------------------------------------------------------------------------
turtle.forward(200) #200만큼 전진
turtle.lt(90) #90만큼 left turn
turtle.rt(90) #90만큼 rt
turtle.up() #turtle이 꼬리를 들어 잉크가 묻지않음
turtle.down() #turtle이 꼬리를 내려 잉크가 묻기시작
turtle.circle(200) #turtle이 200만큼 원을그리며 감
#-------------------------------------------------------------------------------------
turtle.exitonclick() # 화면이 한번 클릭해야 꺼짐
[출처] 04_1130_03|작성자 곰기'''