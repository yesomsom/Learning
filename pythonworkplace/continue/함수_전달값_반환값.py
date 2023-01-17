def open_account():
    print("새로운 계좌가 생성되었습니다.")

open_account() # 정의를 해야 위의 글이 출력됨.

def deposit(balance, money): # 입금는 함수
    print("입금이 완료되었습니다. 잔액은 {0} 원입니다.".format(balance + money))
    return balance + money

def withdraw(balance, money): # 출금하는 함수
    if balance >= money: # 잔액이 출금보다 많으면
        print("출금이 완료되었습니다. 잔액은 {0} 원입니다".format(balance - money))
        return balance - money
    else:
        print("출금이 완료되지 않았습니다. 잔액은 {0} 원입니다.".format(balance))
        return balance

def withdraw_night(balance, money): # 저녁에 출금
    commission = 100 # 수수료 100원
    return commission, balance - money - commission

balance = 0 # 잔액
balance = deposit(balance, 1000)
balance = withdraw(balance, 2000)
balance = withdraw(balance, 200)

commission, balance = withdraw_night(balance, 200)
print("수수료는 {0} 원이며, 잔액은 {1} 원입니다.".format(commission,balance))
print(balance)


'''def withdraw_night(balance, money): # 저녁에 출금
    commission = 100 # 수수료 100원
    return balance - money - commission, commission

balance = 0 # 잔액
balance = deposit(balance, 1000)
balance = withdraw(balance, 2000)
balance = withdraw(balance, 200)

balance, commission = withdraw_night(balance, 200)
print("수수료는 {0} 원이며, 잔액은 {1} 원입니다.".format(commission,balance))
print(balance)'''



