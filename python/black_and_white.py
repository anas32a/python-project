import matplotlib.pyplot as plt
import numpy as np

def image_noire(h, l):
	return np.zeros((h, l), dtype=int)

def image_blanche(h, l):
	return np.ones((h, l), dtype=int)

def creerImgBlancNoir(h, l):
	img = np.zeros((h, l), dtype=int)
	for i in range(h):
		for j in range(l):
			img[i][j] = (i + j) % 2
	return img

def negatif(img):
	return 1 - img