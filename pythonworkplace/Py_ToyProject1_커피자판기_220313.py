from this import d


coffee = '''

         SS S SS S SS S SS S S SS S S S SSS S
         
            S  S S  SSS S SS S SS S SS S S
         
            ------------------------------
            --                          --
             --                        --
              --        COFFEE        --
               --                    --
                ----------------------
             '''

menu = '''
             1. 아이스아메리카노 / 3800원
             2. 아메리카노       / 3800원
             3. 핫초코           / 4000원
        
        '''
#절전모드
print("주문하시겠습니까?(화면을 클릭해주세요.)")
inputsth = input("")
#메인화면
print(coffee)
print(menu)

coffe_price = 0
total_price = 0
change = 0
order = int(input("커피 종류를 선택해주세요"))

#추가완료: 1,2,3 메뉴 이외의 것을 넣었을 때 오류메세지 방출
while order > 3:
    print("잘못 입력하였습니다. 메뉴를 다시 선택해주세요.")
    order = int(input("커피 종류를 선택해주세요"))

#if 1<= order <=3: 가능
if order == 1:
    coffee_price = 3800
elif order == 2:
    coffee_price = 3800
elif order == 3:
    coffee_price = 4000
  
cups = int(input("몇 잔을 드릴까요?"))

#추가완료: 0잔 입력시 오류 반환. 재주문할 수 있게 해준다.
if cups == 0:
    print("잘못 입력하였습니다. 1잔 이상 주문을 해야합니다.")
    cups = int(input("몇 잔을 드릴까요?"))
total_price = coffee_price * cups
print(total_price)

received = int(input(f"총 금액은 {total_price} 원입니다. 돈을 투입해주세요."))

#추가완료: 금액이 부족할 때 다시 주문페이지로 돌아가서 재결재하도록 해준다.
#추가완료: 0원 입력시 주문취소
print("0원 입력시 주문이 취소됩니다.")
while received != 0:
    while received < total_price:
        print("금액이 부족합니다. 다시 결제를 해주세요.")
        received = int(input(f"총 금액은 {total_price} 원입니다. 돈을 투입해주세요."))
        if received == 0:
            break
        break

    if received >= total_price:
        change = received - total_price
        print(f"거스름돈은 {change} 원입니다.")

        change_1000 = change // 1000
        remain_1000 = change % 1000
        change_500 = remain_1000 // 500
        remain_500 = remain_1000 % 500
        change_100 = remain_500 // 100
    
        print(f"1000원 지폐 {change_1000}장, 500원 동전 {change_500}개, 100원 동전 {change_100}개 입니다.")
if received == 0:
        print("주문이 취소되었습니다.")