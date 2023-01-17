weather = "비"
# if 조건:
#     실행명령문
if weather == "비":
    print("우산을 챙기세요.")
elif weather == "미세먼지":
    print("마스크를 챙기세요.")
else:
    print("준비물 필요없어요.")

weather = "미세먼지"
if weather == "비":
    print("우산을 챙기세요.")
elif weather == "미세먼지":
    print("마스크를 챙기세요.")
else:
    print("준비물 필요없어요.")

weather = "맑음"
if weather == "비":
    print("우산을 챙기세요.")
elif weather == "미세먼지":
    print("마스크를 챙기세요.")
else:
    print("준비물 필요없어요.")

weather = "맑음"
if weather == "비":
    print("우산을 챙기세요.")
elif weather == "미세먼지":
    print("마스크를 챙기세요.")

weather = input ("오늘 날씨는 어때요?") # 질문에 답쓰면 거기에 따라 프린트 값 내놓는다.
if weather == "비":
    print("우산을 챙기세요.")
elif weather == "미세먼지":
    print("마스크를 챙기세요.")
else:
    print("준비물 필요없어요.")

weather = input ("오늘 날씨는 어때요?") # 질문에 답쓰면 거기에 따라 프린트 값 내놓는다.
if weather == "비" or weather == "눈": 
    print("우산을 챙기세요.")
elif weather == "미세먼지":
    print("마스크를 챙기세요.")
else:
    print("준비물 필요없어요.")

temp = int(input("기온은 어때요?"))
if  30 <= temp:
    print("너무 더워요. 나가지 마세요.")
elif 10 <= temp and temp < 30:
    print("괜찮은 날씨예요.")
elif 0 <= temp and temp < 10:
    print("외투를 챙기세요.")
else:
    print("너무 추워요. 나가지 마세요.")