print(-1)
print(0)
print(1) # int
print(1.1) # float
 
print('1+1 =', 1+1)
print('2-1 =', 2-1)
print('2*2 =', 2*2)
print('4/2 =', 4/2)
 
import math
print('math.sqrt(4) =', math.sqrt(4))
print('math.sqrt(5) =', math.sqrt(5))
print('math.pow(4,2) =', math.pow(4,2))
print('math.pow(2,3) =', math.pow(2,3))

import random
print('random.random() =',random.random()) # 0.0 <= x < 1.0
print('랜덤수 =',int(random.random()*10)) # 0 <= x < 10
print('랜덤수 =',int(random.random()*10)+1) # 1 <= x <= 10

print('random.uniform(2,3) =',random.uniform(2,3)) # 2.0 <= x < 3.0
print('로또 추첨 번호 =',int(random.uniform(1,46))) # 1 <= x < 46

print('random.randint(1,45) =',random.randint(1,45)) # 1 <= x <= 45

print('random.randrange(1,10) =',random.randrange(1,10)) # 1 <= x < 10
print('random.randrange(1,5,2) =',random.randrange(1,5,2)) # 1 <= x < 5 
#random.randrange(start,stop,step) step이 2면 2만큼 띄운 결과 도출. 결론: 1,3 만 나온다.
print('random.randrange(1,5,3) =',random.randrange(1,5,3)) # 1 <= x < 5 # 1,4 도출
print('random.randrange(1,5,4) =',random.randrange(1,5,4)) # 1 <= x < 5 # 1만도출

menu = 'a','b','c'
print('random.choice(menu) =',random.choice(menu))
menu = '1','2'
print('random.choice(menu) =',random.choice(menu))
abc=['a','b','c']
print(random.choice(abc))
print(random.choice([True, False]))

print(random.sample([1,2,3,4,5],3))
list = ['a', 'b', 'c', 'd']
print(random.sample(list, k=2))
data_list = random.sample(range(10), 2) # 0 <= x < 10, 2개 번호 뽑음
print(data_list)

items = [1,2,3,4,5]
random.shuffle(items)
print(items)