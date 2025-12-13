import matplotlib.pyplot as plt
import numpy as np

def lectureImage(chemin):
	return plt.imread(chemin)

def AfficherImg(img):
	plt.axis("off")
	plt.imshow(img, interpolation="nearest")
	plt.show()

def saveImage(img, nom="image1.png"):
	plt.imsave(nom, img)
