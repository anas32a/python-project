import numpy as np
import matplotlib.pyplot as plt

def inverser(Img):
    return 255 - Img

def flipH(Img):
    return Img[:, ::-1]

def posV(Img1, Img2):
    h1, l = Img1.shape
    h2, _ = Img2.shape

    res = np.zeros((h1 + h2, l), dtype=Img1.dtype)
    res[0:h1, :] = Img1
    res[h1:h1+h2, :] = Img2
    return res

def posH(Img1, Img2):
    h, l1 = Img1.shape
    _, l2 = Img2.shape

    res = np.zeros((h, l1 + l2), dtype=Img1.dtype)
    res[: , 0:l1] = Img1
    res[: , l1 : l1+l2] = Img2
    return res