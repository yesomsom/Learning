print(5,-10,3.14,"안녕") #그대로 출력
print(3*(3+1))
print(3**3) #**는 제곱
print('호호') #문자 그대로 표현 '',""
print('ㅋ'*9)
print(10>5,5>10) #참거짓표현
print(True,False,not True)
print(not (5>10))
"""애완동물 소개"""
animal = "강아지"
name = "멍멍이"
age = 4
hobby = "산책"
is_adult = age >= 3

print("우리집 " + animal + "의 이름은 " + name + "에요")
print(name, "는 ",str(age) + "살이고요,", hobby, "을 좋아해요.")
hobby = "공놀이"
print(name + "는 " + str(age) + "살이고요," + hobby + "을 좋아해요.")
print(name + "는 어른일까요? " + str(is_adult))

age = 4.4
print(str(age),int(age))

# 새로운 코딩!!
# 기차가 들어오고 있습니다~변수 ctrl + / 하면 모두 #처리
station = "사당"
print( station +"행 열차가 들어오고 있습니다.")
station = "신도림"
print( station +"행 열차가 들어오고 있습니다.")
station = "인천공항"
print( station +"행 열차가 들어오고 있습니다.")