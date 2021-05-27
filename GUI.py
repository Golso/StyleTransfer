import tkinter as tk
from tkinter import filedialog, messagebox
from PIL import ImageTk, Image
from UtilsFunctions import create_model, load_model

GUI_BACKGROUND_PATH = "resources/images/StarryNightBackground.jpg"

PATH_TO_MODEL_GOGH = "resources/models/modelVanGogh.tf"
PATH_TO_MODEL_SOUND = "resources/models/modelSound.tf"
PATH_TO_MODEL_PAINT = "resources/models/modelPaint.tf"

DEFAULT_STYLE_PATH = "resources/images/starryNightStyle.jpg"
SOUND_STYLE_PATH = "resources/images/sound.jpg"
PAINTING_STYLE_PATH = "resources/images/painting.jpg"

MODEL_GOGH = load_model(PATH_TO_MODEL_GOGH)
MODEL_SOUND = load_model(PATH_TO_MODEL_SOUND)
MODEL_PAINTING = load_model(PATH_TO_MODEL_PAINT)

WIDTH = 1200
HEIGHT = 700


def load_and_resize_img(path, size):
    img = Image.open(path)
    img = img.resize((size, size), Image.ANTIALIAS)
    img = ImageTk.PhotoImage(img)
    return img


class GUI(tk.Frame):
    def __init__(self, window=None):
        tk.Frame.__init__(self, window)
        window.maxsize(1550, 800)
        window.minsize(1000, 600)
        window.title("DeepTransfer")
        logo = ImageTk.PhotoImage(file='resources/images/VanGoghLogo.jpg')
        window.iconphoto(False, logo)
        self.content_img_path = None
        self.style_img_path = DEFAULT_STYLE_PATH
        self.stylised_img = None
        self.path_to_model = PATH_TO_MODEL_GOGH
        self.style_img = load_and_resize_img(DEFAULT_STYLE_PATH, 600)
        self.model = MODEL_GOGH
        self.canvas = tk.Canvas(window, height=HEIGHT, width=WIDTH)
        self.canvas.pack()

        self.background_image = ImageTk.PhotoImage(file=GUI_BACKGROUND_PATH)
        self.background_label = tk.Label(window, image=self.background_image)
        self.background_label.place(relwidth=1, relheight=1)

        self.left_frame = tk.Frame(window, bg="#80c1ff", bd=5)
        self.left_frame.place(relx=0.25, rely=0.05, relwidth=0.4, relheight=0.9, anchor="n")

        self.bg_img_style_button1 = load_and_resize_img(DEFAULT_STYLE_PATH, 150)
        self.choose_style_button1 = tk.Button(self.left_frame, image=self.bg_img_style_button1,
                                              font=10, command=lambda: self.change_style("Starry night"))
        self.choose_style_button1.place(relwidth=0.3, relheight=0.18)

        self.bg_img_style_button2 = load_and_resize_img(SOUND_STYLE_PATH, 150)
        self.choose_style_button2 = tk.Button(self.left_frame, image=self.bg_img_style_button2, font=10,
                                              command=lambda: self.change_style("Sound"))
        self.choose_style_button2.place(relx=0.35, relwidth=0.3, relheight=0.18)

        self.bg_img_style_button3 = load_and_resize_img(PAINTING_STYLE_PATH, 150)
        self.choose_style_button3 = tk.Button(self.left_frame, image=self.bg_img_style_button3, font=10,
                                              command=lambda: self.change_style("Painting"))
        self.choose_style_button3.place(relx=0.70, relwidth=0.3, relheight=0.18)

        self.img_style_label = tk.Label(self.left_frame, image=self.style_img)
        self.img_style_label.place(rely=0.2, relwidth=1, relheight=0.8)

        self.right_frame = tk.Frame(window, bg="#80c1ff", bd=5)
        self.right_frame.place(relx=0.76, rely=0.05, relwidth=0.4, relheight=0.9, anchor="n")

        self.img_content_label = tk.Label(self.right_frame)
        self.img_content_label.place(relwidth=1, relheight=0.75)

        self.search_button = tk.Button(self.right_frame, text="Choose content image", font=10, command=self.choose_img)
        self.search_button.place(rely=0.78, relwidth=1, relheight=0.1)

        self.transfer_button = tk.Button(self.right_frame, text="Transfer", font=10, command=self.transfer_img)
        self.transfer_button.place(rely=0.9, relwidth=0.45, relheight=0.1)

        self.save_button = tk.Button(self.right_frame, text="Save", font=10, command=self.save_img)
        self.save_button.place(relx=0.55, rely=0.9, relwidth=0.45, relheight=0.1)

    def choose_img(self):
        try:
            img_path = filedialog.askopenfilename(initialdir="/", title="Select content image",
                                                  filetypes=[("jpeg files", "*.jpg")])
            img = load_and_resize_img(img_path, 600)
            self.img_content_label.configure(image=img)
            self.img_content_label.image = img
            self.content_img_path = img_path
        except:
            messagebox.showinfo(title="Wrong file", message="Choose file with jpg format.")

    def transfer_img(self):
        if self.content_img_path:
            self.stylised_img = create_model(self.content_img_path, self.model)
            img = self.stylised_img
            img = img.resize((600, 600), Image.ANTIALIAS)
            img = ImageTk.PhotoImage(image=img)
            self.img_content_label.configure(image=img)
            self.img_content_label.image = img
        else:
            return

    def save_img(self):
        if self.stylised_img:
            try:
                img = self.stylised_img.filename = filedialog.asksaveasfilename(initialdir="/", title="Select file",
                                                                            defaultextension='*.jpg', filetypes=(
                    ('JPEG', ('*.jpg', '*.jpeg')), ('PNG', '*.png')))
                self.stylised_img.save(img)
            except:
                pass
        else:
            return

    def change_style(self, style):
        if style == "Starry night":
            self.style_img_path = DEFAULT_STYLE_PATH
            self.change_style_background()
            self.path_to_model = PATH_TO_MODEL_GOGH
            self.model = MODEL_GOGH
        elif style == "Sound":
            self.style_img_path = "resources/images/sound.jpg"
            self.change_style_background()
            self.path_to_model = PATH_TO_MODEL_SOUND
            self.model = MODEL_SOUND
        else:
            self.style_img_path = "resources/images/painting.jpg"
            self.change_style_background()
            self.path_to_model = PATH_TO_MODEL_PAINT
            self.model = MODEL_PAINTING

    def change_style_background(self):
        self.style_img = load_and_resize_img(self.style_img_path, 600)
        self.img_style_label.configure(image=self.style_img)
        self.img_style_label.image = self.style_img
