from tkinter import *
   
def check_result():
    if checked.get() == True:
        label.config(text="클릭함",font="나눔바른펜,30,bold")
    else:
        label.config(text="클릭해제함",font="나눔바른펜,30,bold")  

window = Tk()
window.title("체크박스")
window.geometry("300x200")

checked = BooleanVar()
check_btn = Checkbutton(window, text="체크박스", variable=checked, command=check_result)
check_btn.pack()

label = Label(window, text='')
label.pack()

window.mainloop()