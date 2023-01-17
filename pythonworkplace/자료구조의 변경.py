# 자료구조의 변경

menu = {"커피", "우유", "주스"} # {}중괄호는 세트
print(menu, type(menu)) # set는 {}

menu = list(menu)
print(menu, type(menu)) # list는 []

menu = tuple(menu)
print(menu, type(menu)) # tuple은 ()

menu = set(menu)
print(menu, type(menu))