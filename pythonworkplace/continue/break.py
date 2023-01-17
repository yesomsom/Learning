absent = [2, 5]
for student in range(1, 11): # 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    if student in absent:
        continue
    print("{0}, 책을 읽어봐.".format(student))

absent = [2, 5]
no_book = [7]
for student in range(1, 11): # 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    if student in absent:
        continue
    elif student in no_book:
        print("오늘 수업 여기까지. {0}는 교무실로 따라와.".format(student))
        break # 바로 반복문 탈출
    print("{0}, 책을 읽어봐.".format(student))

absent = [3, 5]
for student in range(1, 5): 
    if student in absent:
        break
    print("{0}, 책을 읽어봐.".format(student))