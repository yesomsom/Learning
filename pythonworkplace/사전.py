cabinet = {3:"유재석", 100:"김태호"} #3번은 
print(cabinet[3])
print(cabinet[100])

print(cabinet.get(3))
# print(cabinet[5])
# print("hi") # 5번이 없어서 그 후의 것은 출력 안됨

print(cabinet.get(5)) #none이라고 출력하고 이후 것 출력 가능
print("hi") 
print(cabinet.get(5, "사용 가능")) # 5번 값이 없으면 사용 가능 출력
print(cabinet.get(100, "사용 가능"))

print(3 in cabinet) # 3을 가진 키가 있으므로 True
print(5 in cabinet) # 5을 가진 키가 있으므로 False

cabinet = {"A-3":"유재석", "B-100":"김태호"}
print(cabinet["A-3"])
print(cabinet["B-100"])

# 새 손님
print(cabinet)
cabinet["A-3"] = "김종국"
cabinet["C-20"] = "조세호"
print(cabinet)

# 간 손님
del cabinet["A-3"]
print(cabinet)

# key 들만 출력
print(cabinet.keys())

# value 들만 출력
print(cabinet.values())

# key, value 쌍으로 출력
print(cabinet.items())

# 목욕탕 폐점
cabinet.clear()
print(cabinet)