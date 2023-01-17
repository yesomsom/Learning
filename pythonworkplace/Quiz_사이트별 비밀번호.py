"""
사이트별로 비밀번호를 만들어주는 프로그램을 작성하시오.

예) http://naver.com
규칙1: http:// 부분은 제외 => naver.com
규칙2: 처음 만나는 점(.) 이후 부분은 제외 => naver
규칙3: 남은 글자 중 처음 세자리 + 글자 갯수 + 글자 내 'e' 갯수 + "!"로 구성
               (nav)              (5)          (1)              (!)
예) 생성된 비밀번호 : nav51!

"""

url = "http://naver.com"
my_str = url.replace("http://","") # 바꾸는 것, 규칙 1
print(my_str)
my_str = my_str[:my_str.index(".")] # 처음부터 처음 나오는 점의 위치 직전까지, 규칙2
print(my_str)
password = my_str[:3] + str(len(my_str)) + str(my_str.count("e")) + "!"
print(password)
print("{0} 의 비밀번호는 {1} 입니다.".format(url,password))

url = "http://goole.com"
my_str = url.replace("http://","") # 바꾸는 것, 규칙 1
print(my_str)
my_str = my_str[:my_str.index(".")] # 처음부터 처음 나오는 점의 위치 직전까지, 규칙2
print(my_str)
password = my_str[:3] + str(len(my_str)) + str(my_str.count("e")) + "!"
print(password)
print("{0} 의 비밀번호는 {1} 입니다.".format(url,password))

url = "http://yahoo.ac.kr"
my_str = url.replace("http://","") # 바꾸는 것, 규칙 1
print(my_str)
my_str = my_str[:my_str.index(".")] # 처음부터 처음 나오는 점의 위치 직전까지, 규칙2
print(my_str)
password = my_str[:3] + str(len(my_str)) + str(my_str.count("e")) + "!"
print(password)
print("{0} 의 비밀번호는 {1} 입니다.".format(url,password))