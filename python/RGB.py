import numpy as np
import matplotlib.pyplot as plt
from random import randrange

def	initImageRGB(imageRGB):
    for c in range (3):
        for i in range (imageRGB[0]):
            for j in range (imageRGB[0][0]):
                imageRGB[c][i][j] = randrange(256)
    return imageRGB

def	 symetrieH(img):
    return img[:, ::-1, :]

def	 symetrieV(img):
    return img[:, :, ::-1]

def	grayscale(imageRGB):
    _, n, m = imageRGB.shape
    imgray = np.zeros(n, m, dtype = int)
    for i in range (n):
        for j in range (m):
            r = imageRGB[0][i][j]
            g = imageRGB[1][i][j]
            b = imageRGB[2][i][j]
            maxi = max(r, g, b)
            mini = min(r, g, b)
            
            imgray[i][j] = (maxi + mini) // 2
        
    return imgray

