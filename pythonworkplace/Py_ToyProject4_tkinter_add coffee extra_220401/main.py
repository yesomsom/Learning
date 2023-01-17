from tkinter import *
from tkinter import messagebox

def order():
    user_choice = ""
    for i in check_value:
        if check_value[i].get() == True:
            user_choice += extra[i] + ' '
            check_value[i].set(False)
    messagebox.askokcancel("주문확인", f"{user_choice}추가 완료")

window = Tk()
window.title("커피 extra 오더")
window.geometry("600x600")
window.config(bg="#BB8760", padx=50, pady=50) #컬러피커

coffee_label = Label(window, text="아이스 커피", font=("나눔고딕", 35, "bold"), 
                                                fg="white", bg="#BB8760")
coffee_label.grid(column=0, row=0, columnspan=2)                                               

img = PhotoImage(file="coffee1.png").subsample(2)

label_img = Label(window, image=img, bg="#BB8760")
label_img.grid(column=0, row=1, rowspan=6, padx=30, pady=20)

extra_label = Label(window, text="extra 선택", font=("나눔고딕", 20, "bold"), 
                                                fg="white", bg="#BB8760")
extra_label.grid(column=1, row=1)

extra = {0:"샷", 1:"시럽", 2:"휘핑", 3:"자바칩"}
check_value = {}

for i in range(len(extra)):
    check_value[i] = BooleanVar()
    Checkbutton(window, text=extra[i], variable=check_value[i], 
                font=("나눔고딕", 15, "bold"),
                bg="#BB8760").grid(column=1, row=i+2)

button = Button(window, text="주문하기", width=10, height=2,
                command=order)
button.grid(column=1, row=6)




window.mainloop()