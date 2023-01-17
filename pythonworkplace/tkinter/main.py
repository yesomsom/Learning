from tkinter import *
import tkinter as tk
from PIL import ImageTk, Image
root=Tk()

image = Image.open('coffee.png')
# The (450, 350) is (height, width)
image = image.resize((200, 350), Image.ANTIALIAS)
my_img = ImageTk.PhotoImage(image)
my_img = Label(image = my_img)
my_img.pack()

root.mainloop()