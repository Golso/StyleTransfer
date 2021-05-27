import tkinter as tk
from GUI import GUI, WIDTH, HEIGHT

if __name__ == '__main__':
    root = tk.Tk()
    app = GUI(window=root)
    root.geometry("%dx%d" % (WIDTH, HEIGHT))
    root.eval('tk::PlaceWindow %s center' % root.winfo_toplevel())
    app.mainloop()
