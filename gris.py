import matplotlib.pyplot as plt
import numpy as np

def luminance(Img):
    return np.mean(Img)

def constrast(Img):
    return np.var(Img)

def profondeur(Img):
    return np.max(Img)

def Ouvrir(Img):
    return Img
