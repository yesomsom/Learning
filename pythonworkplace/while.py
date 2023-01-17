customer = "토르"
index = 5
# while(조건) # 조건 만족할 때까지 진행
while index >=1:
    print("{0}, 커피가 준비 되었습니다. {1} 번 남았어요.".format(customer, index))
    index -= 1
    if index == 0:
        print("커피는 폐기처분되었습니다.")


'''customer = "아이언맨"
index = 1
while True:
    print("{0}, 커피가 준비 되었습니다. 호출 {1} 회".format(customer, index))
    index += 1
    # 무한 루프에 빠짐. 끝내기 위해서는 ctrl + C'''


customer = "토르"
person = "unknown"

while person != customer : # person이 customer가 아닐 때
    print("{0}, 커피가 준비 되었습니다.".format(customer))
    person = input("이름이 어떻게 되세요?")
