import tkinter as tk
from tkinter import filedialog
from PIL import ImageTk, Image
from UtilsFunctions import create_model, load_model


GUI_BACKGROUND_PATH = "./images/StarryNightBackground.jpg"
path_to_model = "./models/modelVanGogh.tf"
DEFAULT_STYLE_PATH = "./images/starryNightStyle.jpg"


def load_and_resize_img(path):
    img = Image.open(path)
    img = img.resize((600, 600), Image.ANTIALIAS)
    img = ImageTk.PhotoImage(img)
    return img


class GUI(tk.Frame):
    def __init__(self, window=None):
        tk.Frame.__init__(self, window)
        height, width = 700, 1200
        self.path = ""
        self.style_img = load_and_resize_img(DEFAULT_STYLE_PATH)
        self.model = load_model(path_to_model)
        self.canvas = tk.Canvas(window, height=height, width=width)
        self.canvas.pack()

        self.background_image = ImageTk.PhotoImage(file=GUI_BACKGROUND_PATH)
        self.background_label = tk.Label(window, image=self.background_image)
        self.background_label.place(relwidth=1, relheight=1)

        self.frame = tk.Frame(window, bg="#80c1ff", bd=5)
        self.frame.place(relx=0.25, rely=0.05, relwidth=0.3, relheight=0.1, anchor="n")

        self.search_button = tk.Button(self.frame, text="Choose content image", font=10, command=self.choose_img)
        self.search_button.place(relwidth=1, relheight=1)

        self.lower_frame = tk.Frame(window, bg="#80c1ff", bd=5)
        self.lower_frame.place(relx=0.25, rely=0.25, relwidth=0.4, relheight=0.7, anchor="n")

        self.menu_button = tk.Menubutton(self.lower_frame, text="Choose style")
        self.menu_button.place(relwidth=1, relheight=0.1)

        self.img_style_label = tk.Label(self.lower_frame, image=self.style_img)
        self.img_style_label.place(rely=0.15, relwidth=1, relheight=0.8)

        self.right_frame = tk.Frame(window, bg="#80c1ff", bd=5)
        self.right_frame.place(relx=0.75, rely=0.05, relwidth=0.4, relheight=0.9, anchor="n")

        self.img_content_label = tk.Label(self.right_frame)
        self.img_content_label.place(relwidth=1, relheight=0.7)

        self.transfer_button = tk.Button(self.right_frame, text="Transfer", font=10, command=self.transfer_img)
        self.transfer_button.place(relx=0.25, rely=0.75, relwidth=0.5, relheight=0.1)

        self.save_button = tk.Button(self.right_frame, text="Save", font=10)
        self.save_button.place(relx=0.25, rely=0.88, relwidth=0.5, relheight=0.1)

    def choose_img(self):
        self.path = filedialog.askopenfilename(initialdir="/", title="Select content image",
                                               filetypes=[("jpeg files", "*.jpg")])
        img = load_and_resize_img(self.path)
        self.img_content_label.configure(image=img)
        self.img_content_label.image = img

    def transfer_img(self):
        img = create_model(self.path, self.model)
        img = ImageTk.PhotoImage(image=img)
        self.img_content_label.configure(image=img)
        self.img_content_label.image = img


root = tk.Tk()
app = GUI(window=root)
app.mainloop()
