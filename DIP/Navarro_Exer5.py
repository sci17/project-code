import cv2
import numpy as np
from matplotlib import pyplot as plt


img = cv2.imread('Lance.jpg', cv2.IMREAD_GRAYSCALE)

b0 = np.uint8((img >> 0) & 1)
b1 = np.uint8((img >> 1) & 1)
b2 = np.uint8((img >> 2) & 1)
b3 = np.uint8((img >> 3) & 1)
b4 = np.uint8((img >> 4) & 1)
b5 = np.uint8((img >> 5) & 1)
b6 = np.uint8((img >> 6) & 1)
b7 = np.uint8((img >> 7) & 1)

plt.figure(figsize=(20, 20))

plt.subplot(3, 3, 1)
plt.imshow(img, cmap='gray')
plt.title('Original Image')

plt.subplot(3, 3, 2)
plt.imshow(b0, cmap='gray')
plt.title('BIT PLANE 0')

plt.subplot(3, 3, 3)
plt.imshow(b1, cmap='gray')
plt.title('BIT PLANE 1')

plt.subplot(3, 3, 4)
plt.imshow(b2, cmap='gray')
plt.title('BIT PLANE 2')

plt.subplot(3, 3, 5)
plt.imshow(b3, cmap='gray')
plt.title('BIT PLANE 3')

plt.subplot(3, 3, 6)
plt.imshow(b4, cmap='gray')
plt.title('BIT PLANE 4')

plt.subplot(3, 3, 7)
plt.imshow(b5, cmap='gray')
plt.title('BIT PLANE 5')

plt.subplot(3, 3, 8)
plt.imshow(b6, cmap='gray')
plt.title('BIT PLANE 6')

plt.subplot(3, 3, 9)
plt.imshow(b7, cmap='gray')
plt.title('BIT PLANE 7')

plt.show()
