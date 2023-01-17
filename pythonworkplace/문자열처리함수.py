python = "Python is Amazing"
print(python.lower())
print(python.upper())
print(python[0].isupper()) # 첫 번째 문자가 대문자인가?
print(len(python))
print(python.replace("Python","Java")) # 파이썬을 자바로 변경

index = python.index("n")
print(index) # n  이 어디에 위치?
index = python.index("n", index + 1) # 두 번째 n 을 찾음
print(index)

print(python.find("Python"))
print(python.find("Java")) # Java 없으면 -1 반환, index는 오류가 난다.
print("hi")

print(python.count("n"))